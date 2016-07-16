#setting docker
rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum -y install docker-io chkconfig
groupadd docker
usermod -aG docker vagrant
service docker start
chkconfig docker on

#setting docker-compose
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
