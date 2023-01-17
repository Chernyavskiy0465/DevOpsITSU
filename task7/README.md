Hometask 7

ssh-keygen -t rsa  (/home/vagrant/.ssh/id_rsa)

ssh-add /home/vagrant/.ssh/id_rsa
ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub -p 3822 root@yoko.ukrtux.com

ssh -D8888 -p 3822 root@yoko.ukrtux.com

python3 -m http.server 8855

ssh -R 13822:localhost:8855 -p 3822 root@yoko.ukrtux.com
