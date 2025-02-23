#!/bin/bash

yum update -y
yum -y install httpd git

systemctl start httpd
systemctl enable httpd

git clone https://github.com/SamaraCarreiro/atividadeAWS.git /var/www/html/

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

systemctl restart httpd

systemctl status httpd >> /var/log/setup.log 2>&1

curl -X POST -d "nome-Samara Carreiro" https://difusaotech.com.br/lab/aws/index.php >> /var/log/setup.log 2>&1

echo "Script concluído com sucesso!" >> /var/log/setup.log
