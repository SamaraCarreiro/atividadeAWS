#!/bin/bash
sudo su
yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
git clone https://github.com/SamaraCarreiro/atividadeAWS.git /var/www/html/
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html
sudo systemctl restart httpd
curl -X POST -d "nome-Samara Carreiro" https://difusaotech.com.br/lab/aws/index.php 
echo "Script concluído com sucesso!" >> /var/log/setup.log
