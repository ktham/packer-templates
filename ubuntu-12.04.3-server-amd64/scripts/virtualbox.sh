# Without libdbus virtualbox would not start automatically after compile
apt-get -y install --no-install-recommends libdbus-1-3

# If the old VirtualBox guest additions are installed, remove them.
/etc/init.d/virtualbox-ose-guest-utils stop
rmmod vboxguest
aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
aptitude -y install dkms

# Install some stuff we need
apt-get -y install build-essential linux-headers-$(uname -r)

# Install the VirtualBox guest additions
VBOX_VERSION=$(cat $HOME/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_${VBOX_VERSION}.iso
mount -o loop ${VBOX_ISO} /mnt
yes | sh /mnt/VBoxLinuxAdditions.run
umount /mnt

#Cleanup VirtualBox
rm ${VBOX_ISO}
