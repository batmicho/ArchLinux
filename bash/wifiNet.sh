
while [ 1 ]  
do
    echo -e "\n\n ===== Start to wifi from NetCtl ====="

    echo "10- Stop NetworkManager"  
    echo "0 - Scan for WiFi Networks"   
    echo "1 - Connect to network"
    echo "2 - List Network Profiles"
    echo "3 - Remove Network Profile"
    echo "4 - Check Wifi wave strenght"
    echo -e "\n     # CTRL + C to stop #"
    echo -ne "\n ---Make a Selection---: "
    read selection

    if [ $selection -eq 10 ]; then
        sudo systemctl stop NetworkManager; 
    elif [ $selection -eq 0 ]; then
        ip a;
        echo "Add the card with which to scan.";
        read wlanCard;
        rfkill unblock 4
        sudo ip link set $wlanCard up
        sudo wifi-menu -o $wlanCard
    elif [ $selection -eq 1 ]; then
        netctl list;
        echo "Add Net Profile";
        read profile;
        netctl start $profile;
    elif [ $selection -eq 2 ]; then
        netctl list; 
    elif [ $selection -eq 4 ]; then
        wavemon;
        break
    else
        echo "wrong selection"
    fi 
done

