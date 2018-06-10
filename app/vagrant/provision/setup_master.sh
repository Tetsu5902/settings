#Copy slave ssh keys
cp -p /share/private_key.slave00 ~/.ssh/
chmod 700 ~/.ssh/private_key.slave00

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
#sudo apt-get install ansible -y

sudo apt-get install python3-pip -y
sudo pip3 install ansible


