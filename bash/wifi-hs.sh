#Log to one of two netctl profiles and see the IP provided.

log_in () 
{
    NET_sf=""
   
    NET_hs=""
   
    TEST_sf_CON=$(netctl status $NET_sf |grep -i 'Status:'|awk '{print $2}')
    
    TEST_hs_CON=$(netctl status $NET_hs |grep -i 'Status:'|awk '{print $2}')

    if [ ! -z $1 ]; then
            case $1 in
                hs)  
                    if [ -z $TEST_hs_CON ]; then 
                        echo "Starting $1";
                        netctl start $NET_hs;
                        echo "SUCCESS IP Requested"
                    else
                        echo "Connected to WIFI already!"
                    fi 
                    ;;
                sf)
                    if [ -z $TEST_sf_CON ]; then
                        echo "Starting $1";
                        netctl start $NET_sf;
                        echo "SUCCESS IP Requested"
                    else
                        echo "Connected to WIFI already!"
                    fi
                    ;;
               *)
                   echo "Use for now only 'sf' or 'hs' or configure new in script;"
           esac
    else
        echo "0000 Use for now only 'sf' or 'hs' or configure new in script;"
    fi
}

log_in $1

while true; do 
    HAS_IP=$(ip a |grep 'wlp3s0' |sed -rn '/((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])/p'|awk '{print $2}')
 
    if [ ! -z $(echo $HAS_IP) ]; then 
        echo "Wifi IP is $HAS_IP" ;
        break
    else
        sleep 1;
        echo "Looking for IP. . .";
        echo $HAS_IP
    fi
done


