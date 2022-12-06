sudo useradd -m -p adminuser adminuser 
sudo usermod -aG sudo adminuser 

sudo useradd -m -G sudo -p nopassword poweruser
echo 'poweruser ALL=(ALL) NOPASSWD:' >> /etc/sudo 
echo 'poweruser ALL=(ALL) NOPASSWD:' >> /usr/sbin/iptables
sudo usermod -a -G adminuser poweruser
sudo ln -s /etc/mtab /home/poweruser/mylink
