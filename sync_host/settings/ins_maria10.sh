rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
cp /sync_guest/settings/mariadb.repo /etc/yum.repos.d/mariadb.repo
rpm -e --nodeps mariadb-libs
yum -y install MariaDB-client MariaDB-server
