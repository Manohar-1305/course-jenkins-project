mkdir app
python3 -m venv venv
source venv/bin/activate
vi /etc/systemd/system/flaskapp.service
systemctl daemon-reload
systemctl enable flaskapp.service
systemctl  start  flaskapp.service
systemctl  status  flaskapp.service


[Unit]
Description=flask app
After=network.target

[Service]
User=ec2-user
Group=ec2-user
WorkingDirectory=/home/ec2-user/app/
Environment="PATH=/home/ec2-user/app/venv/bin"
ExecStart=/home/ec2-user/app/venv/bin/python3 /home/ec2-user/app/app.py

[Install]
WantedBy=multi-user.target


sudo vi flaskapp.service
sudo systemctl daemon-reload
curl http://10.200.1.141:5000
curl http://127.0.0.1:5000

sudo systemctl enable flaskapp.service
sudo systemctl start flaskapp.service
