# Firewall - UFW
#You can reset all rules by using the following command: sudo ufw reset

# Set 1 - Recommended for most users
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Set 2 - More strictly
# sudo ufw default deny
# sudo ufw allow from 192.168.0.0/24
# sudo ufw allow Deluge
# sudo ufw limit ssh

# Enable UFW
sudo ufw enable
sudo systemctl enable ufw
sudo systemctl start ufw

