# Remove stuff added when provisioning
sudo rm -rf /home/vagrant/.ansible
sudo rm -rf /home/vagrant/.cache

# Remove any apt junk
sudo apt-get clean

# Minimise the disk
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY

# Flush out history
cat /dev/null > ~/.bash_history
history -c

# Exit out the box
exit