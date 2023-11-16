#!/bn/bash 

echo "Enter the Wifi Interface whose MAC address you would like to spoof: "
read interface

sudo ip link set $interface down
sudo macchanger -A $interface
sudo ip link set $interface up

echo "You have spoofed your MAC address. If it changes back on its own, contact your System Administrator about adding the configuration file /etc/NetworkManager/conf.d/retain_spoofed_mac.conf."
