PYTHON_TAR_NAME=ActivePython-3.6.0.3600-linux-x86_64-glibc-2.3.6-401834


#Copy slave ssh keys(root acount)
cp -p /share/ssh/private_key.slave00 /home/vagrant/.ssh/
chown vagrant:vagrant /home/vagrant/.ssh/private_key.slave00
chmod 600 /home/vagrant/.ssh/private_key.slave00

cp -p /share/ssh/private_key.coreos /home/vagrant/.ssh/
chown vagrant:vagrant /home/vagrant/.ssh/private_key.coreos
chmod 600 /home/vagrant/.ssh/private_key.coreos


cp -p /share/ssh/sshd_config /home/vagrant/.ssh/config
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


scp -i .ssh/private_key.coreos /share/${PYTHON_TAR_NAME}.tar.gz core@172.17.8.101:/home/core/
ssh core@172.17.8.101 -i .ssh/private_key.coreos tar -xzvf ${PYTHON_TAR_NAME}.tar.gz
ssh core@172.17.8.101 -i .ssh/private_key.coreos cp -rp ${PYTHON_TAR_NAME}/INSTALLDIR ./python