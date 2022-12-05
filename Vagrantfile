Vagrant.configure("2") do |config|
  config.vm.define "admin" do |admin|
    admin.vm.hostname = "admin"
    admin.vm.box = "ubuntu/focal64"
    admin.vm.network "private_network", ip: "192.168.33.10"
    admin.vm.network "forwarded_port", guest: 80, host: 8888


    admin.vm.provider "virtualbox" do |vb|
      vb.name = "admin"
      vb.gui = false
      vb.memory = "1024"
    end

    admin.vm.provision "shell", run: "always",  inline: <<-SHELL
        echo "Hello from the Ubuntu VM"
        sudo useradd -m  -p '$6$enterpass$LWikCV49XN.urs/pEkh9n2Nk3nyL6O9jeAwKat3F/qbArFJqdHKnEFAdDuhKWWSDpc/vZWkQ5V.eEec.m/z5X.' adminuser
        sudo usermod -a -G admin adminuser
        sudo useradd -m poweruser
        sudo passwd -d poweruser
        echo 'poweruser ALL=(ALL) NOPASSWD: /usr/sbin/iptables' 
        sudo usermod -a -G adminuser poweruser
        sudo ln -s /etc/mtab /home/poweruser/mylink
    SHELL
  end
  
end
