#!/bin/bash

echo "Iniciando as configurações de Diretórios, Grupos e Usuários..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados com sucesso!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso!"

useradd carlos -c "Carlos Santana" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_ADM
useradd maria -c "Maria do Carmo" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_ADM
useradd joao -c "João Pedro" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_ADM


useradd debora -c "Débora Oliveira" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_VEN
useradd sebastiana -c "Sebastiana do Amaral" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_VEN
useradd roberto -c "Roberto Carlos" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_VEN


useradd josefina -c "Josefina Santos" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_SEC
useradd amanda -c "Amanda Souza" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_SEC
useradd rogerio -c "Rogerio Camargo" -m -e 30/10/2022 -s /bin/bash -p $'(openssl passwd -crypt Senha123)' -g GRP_SEC
echo "Usuários criados com sucesso!"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Root configurado como dono de todos os grupos."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões configuradas com sucesso!"
