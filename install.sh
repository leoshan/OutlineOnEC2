#!/bin/bash
sudo su
yum upgrade -y
yum install docker mail -y
service docker start
wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh | bash > outkey.txt
cat outkey.txt | mail -s "Outline output" leo_shan@outlook.com
