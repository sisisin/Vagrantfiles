#!/bin/sh
sudo yum install -y vim wget gcc openssl-devel curl-devel expat-devel cpan gettext asciidoc xmlto bash-completion

cd /usr/local/src/
sudo wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz
sudo tar xvzf Python-2.7.3.tgz
cd Python-2.7.3
sudo ./configure --prefix=/usr/local/python
sudo make
sudo make install
export PATH=/usr/local/python/bin:$PATH
cd ../
sudo rm -rf Python-2.7.3 Python-2.7.3.tgz

cd /usr/local/src/
sudo wget https://www.kernel.org/pub/software/scm/git/git-2.2.2.tar.gz
sudo tar xzvf git-2.2.2.tar.gz
cd git-2.2.2
sudo make prefix=/usr/local all doc
sudo make  prefix=/usr/local install install-doc install-html
cd ../
sudo rm -rf git-2.2.2.tar.gz git-2.2.2

git clone git://github.com/creationix/nvm.git /home/vagrant/.nvm
. /home/vagrant/.nvm/nvm.sh
nvm install v0.12.2
echo . /home/vagrant/.nvm/nvm.sh >> /home/vagrant/.bashrc
echo nvm use node >> /home/vagrant/.bashrc
. ~/.bashrc
sudo chown -R vagrant:vagrant /home/vagrant/.nvm/

sudo firewall-cmd --permanent --add-port=3000/tcp

npm install -g express-generator gulp mocha nodemon node-inspector pm2
