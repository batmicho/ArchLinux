#Michi Mane did it!

#Add existing interfaces to an array to later select from it:
interfaces=()
for i in $(ip a | grep BRO | awk '{print $2}' | sed s/://g);do
    interfaces+=("$i")
done
#echo "${interfaces[@]}"

#Adding existing interfaces to an arrat to connect to a profile later:
profiles=()
for i in $(ls -l /etc/netctl/ | grep '^-' | awk {'print $9'});do
    profiles+=("$i")
done

#Starting the command menu:
while [ 1 ]  
do
    echo -e "\n\n ===== Manage Wifi via NetCtl & more ====="

    echo "10- Stop NetworkManager"  
    echo "0 - Scan for WiFi Networks"   
    echo "1 - Connect to network"
    echo "2 - List Network Profiles"
    echo "3 - Remove Network Profile"
    echo "4 - Check Wifi wave strenght"
    echo "5 - airodump-ng " 
    echo -e "\n     # CTRL + C to stop #"
    echo -ne "\n ---Make a Selection---: "
    read selection

    if [ $selection -eq 10 ]; then
        sudo systemctl stop NetworkManager; 
    elif [ $selection -eq 0 ]; then 
        select opt in "${interfaces[@]}"
        do
            echo "Add the card with which to scan."; 
            #rfkill unblock 4
            sudo ip link set $opt up
            sudo wifi-menu -o $opt
            break 
         done
    elif [ $selection -eq 1 ]; then
        echo "Select the Wifi Profile"; 
        select opt in "${profiles[@]}"
        do
        netctl stop $opt;     
        netctl start $opt;
        break 
        done
    elif [ $selection -eq 2 ]; then
        netctl list;
    elif [ $selection -eq 5 ]; then
         echo "Add wifi card"
         select opt in "${interfaces[@]}"
         do
         sudo airodump-ng $opt
         break
         done
    elif [ $selection -eq 4 ]; then
        sudo wavemon;
        break
    else
        echo "Wrong Selection"
    fi 
done

