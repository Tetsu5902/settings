#Copy slave ssh keys(root acount)
cp -p /share/private_key.slave00 /home/vagrant/.ssh/
chown vagrant:vagrant /home/vagrant/.ssh/private_key.slave00
chmod 600 /home/vagrant/.ssh/private_key.slave00

cp -p /share/sshd_config /home/vagrant/.ssh/config
chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 600 /home/vagrant/.ssh/config

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
#sudo apt-get install ansible -y

sudo apt-get install python3-pip -y
sudo pip3 install ansible

sudo apt-get install emacs25-nox -y
