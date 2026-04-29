# update-on-boot
 
Runs `apt-get update`, `upgrade` and `autoremove` automatically on boot via systemd, logs are stored in `/var/log/sys-update.log`.

## Setup
 
```bash
sudo cp sys-update.sh /usr/local/bin/sys-update.sh
sudo chmod +x /usr/local/bin/sys-update.sh
 
sudo cp update-on-boot.service /etc/systemd/system/update-on-boot.service
 
sudo systemctl daemon-reload
sudo systemctl enable update-on-boot.service
sudo systemctl start update-on-boot.service
```
