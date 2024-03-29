#!/usr/bin/env bash

# 解决 sudo: unable to resolve host xxxxxx 的问题
# 解决办法是把 /etc/hostname 的名字在 /etc/hosts 内加一条配置
echo 127.0.1.1 $(hostname) | sudo tee -a /etc/hosts
echo 127.0.0.1 localhost | sudo tee -a /etc/hosts

# 调整时间为东八区，修正 locale 不完整
timedatectl set-timezone Asia/Shanghai
sudo locale-gen zh_CN.UTF-8

#sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo cp /etc_share/apt/sources.list /etc/apt/sources.list

#sudo apt-get update

# 安装 python 运行环境
#sudo apt-get install -y python-pip python-dev build-essential
#sudo pip install virtualenvwrapper

#echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
#echo "export PROJECT_HOME=$HOME/Devel" >> ~/.bashrc
#echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# web server
#sudo apt-get install -y nginx 
#sudo apt-get install -y uwsgi

# install git
#sudo apt-get -y install git


# install percona 5.7 (mysql-server)
# @see https://www.percona.com/doc/percona-server/5.7/installation/apt_repo.html

# set root password
#echo percona-server-server-5.7 percona-server-server/root_password password $dbpass | sudo debconf-set-selections
#echo percona-server-server-5.7 percona-server-server/root_password_again password $dbpass | sudo debconf-set-selections

#wget https://repo.percona.com/apt/percona-release_0.1-3.$(lsb_release -sc)_all.deb
#sudo dpkg -i percona-release_0.1-3.$(lsb_release -sc)_all.deb
#sudo apt-get update
#sudo apt-get install -qq -y percona-server-server-5.7

#rm percona-release_0.1-3.$(lsb_release -sc)_all.deb
