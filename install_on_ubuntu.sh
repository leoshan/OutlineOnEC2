#ubuntu 18.04 AMI
#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install docker sendmail mail -y
sudo service docker start
#wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh | bash > outkey.txt
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)" > outkey.txt
cat outkey.txt | mail -s "Outline install output" leo_shan@outlook.com
cat /opt/outline/access.txt | mail -s "Outline key" leo_shan@outlook.com
