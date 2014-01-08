# Apt-install various things necessary for Ruby, guest additions,
# etc., and remove optional things to trim down the machine.
apt-get -y update
apt-get -y upgrade
apt-get clean
