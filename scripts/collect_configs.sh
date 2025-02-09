#!/bin/bash -e

cd $(dirname $0)

dest_root_dir=./configs
paths=(
    "/etc/selinux/config"
    "/etc/samba/smb.conf"
    "/etc/php.ini"
    "/etc/php-fpm.conf"
    "/etc/php-fpm.d/www.conf"
    "/etc/httpd/conf.d/php.conf"
    "/etc/httpd/conf/httpd.conf"
    "/etc/httpd/conf.d/autoindex.conf"
    "/etc/my.cnf"
    "/etc/my.cnf.d/client.cnf"
    "/etc/my.cnf.d/mysql-default-authentication-plugin.cnf"
    "/etc/my.cnf.d/mysql-server.cnf"
)

mkdir -p ${dest_root_dir}
for path in ${paths[@]};
do
    dest_path=${dest_root_dir}/${path}
    mkdir -p $(dirname ${dest_path})
    cp -upv ${path} ${dest_path}
done
