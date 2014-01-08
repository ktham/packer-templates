# Install some stuff we need
apt-get -y install build-essential linux-headers-$(uname -r)

# Install the guest tools
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop $HOME/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
umount /mnt/cdrom

rm $HOME/linux.iso
