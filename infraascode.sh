#! /bin/bash

echo "Criando diretórios na raiz..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando user e adicionando no grupo..."

useradd carlos -c "Carlos Lima" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd maria -c "Maria Lima" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd joao -c "João de Lima" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Débora Castro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana de Castro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd roberto -c "Roberto Castro" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Josefina Melo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

useradd amanda -c "Amanda Melo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

useradd rogerio -c "Rogério Melo" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Aplicando permissão nos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento finalizado!"
