#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."

sudo useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -c "Joao da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

sudo useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

sudo useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Permissões dos diretórios..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
