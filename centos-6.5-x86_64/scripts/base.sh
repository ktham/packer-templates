# Base install

# Disable requiretty since this can get in the way of automated tools
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

# Install a lot of the base tools
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` \
    zlib-devel openssl-devel readline-devel sqlite-devel \
    perl wget dkms nfs-utils

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
