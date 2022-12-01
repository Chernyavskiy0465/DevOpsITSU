#!/bin/bash
yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx
cp -f /vagrant/index.html /usr/share/nginx/html/index.html