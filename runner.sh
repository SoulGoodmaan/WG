apt-get update && \ 
apt install python3-pip && \ 
apt-get install git && \ 
apt-get install wireguard && \ 
git clone https://github.com/donaldzou/WGDashboard.git wgdashboard && \ 
cd wgdashboard/src && \ 
chmod u+x wgd.sh && \ 
./wgd.sh install && \ 
chmod -R 755 /etc/wireguard && \ 
./wgd.sh start && \ 
cd /etc/wireguard/ && \ 
wg genkey | tee privatekey | wg pubkey > publickey && \ 

#nano /etc/sysctl.conf (прописать net.ipv4.ip_forward=1) && \ 
#sudo sysctl -p && \ 
#cat privatekey && \ 
#vim wg0.conf (по аналогии с другими серверами) && \ 
#wg-quick up wg0

#bash runner.sh