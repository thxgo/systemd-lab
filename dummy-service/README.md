# dummy-service
 
A long-running systemd service that logs a message with the UNIX timestamp every 30 seconds.

## Requirements
 
- Linux with systemd
- Bash

## Setup

Clone the repository:

```bash
git clone https://github.com/thxgo/systemd-lab.git
cd systemd-lab/dummy-service
```

Copy the script and give it execution permission:

```bash
sudo cp dummy.sh /usr/local/bin/dummy.sh
sudo chmod +x /usr/local/bin/dummy.sh
``` 
Create the log file:
 
```bash
sudo touch /var/log/dummy-service.log
sudo chown nobody:nogroup /var/log/dummy-service.log
```

Copy the service file and reload systemd:
 
```bash
sudo cp dummy.service /etc/systemd/system/dummy.service
sudo systemctl daemon-reload
```

## Usage
 
```bash
# Start the service
sudo systemctl start dummy
 
# Stop the service
sudo systemctl stop dummy
 
# Enable on boot
sudo systemctl enable dummy
 
# Disable on boot
sudo systemctl disable dummy
 
# Check status
sudo systemctl status dummy
 
# Check logs
sudo journalctl -u dummy -f
```
