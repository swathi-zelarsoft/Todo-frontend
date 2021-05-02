#TODO
```
This service is written in NodeJS, Hence need to install NodeJS in the system.
# apt update
# apt install npm -y

Now , fetch the code from git-hub 
  
# git clone https://github.com/zelar-soft-todoapp/todo.git
# cd todo
# npm install

Now, lets set up the service with systemctl.
# mv /todo/systemd.service /etc/systemd/system/todo.service
# systemctl daemon-reload
# systemctl start todo
# systemctl status todo
```