#!/bin/bash

#DIRETORIOS

echo "Criando diretorios...."
mkdir /public 
mkdir /adm 
mkdir /ven 
mkdir /sec
echo "Diretorios criado..."


#GRUPO
echo "Criando Grupos..."
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC
echo "Grupos criados...."

#USUARIOS
echo "Criando usuários de Administração...."
useradd carlos -c "Usuário da Administracao" -m -s /bin/bash -p $(openssl passwd  262913)
useradd maria -c "Usuário da Administracao" -m -s /bin/bash -p $(openssl passwd  262913)
useradd joao -c "Usuário da Administracao" -m -s /bin/bash -p $(openssl passwd  262913)
echo "Usuarios de Administrção criado"

echo "Criando usuários do setor de vendas...."
useradd debora -c "Usuário do setor de vendas" -m -s /bin/bash -p $(openssl passwd  262913)
useradd sebastiana -c "Usuário do setor de vendas" -m -s /bin/bash -p $(openssl passwd  262913)
useradd roberto -c "Usuário do setor de vendas" -m -s /bin/bash -p $(openssl passwd  262913)
echo "Usuarios do setor de vendas"

echo "Criando usuários da Secretaria...."
useradd josefina -c "Usuário do setor de Secretaria" -m -s /bin/bash -p $(openssl passwd  262913)
useradd amanda -c "Usuário do setor de Secretaria" -m -s /bin/bash -p $(openssl passwd  262913)
useradd rogerio -c "Usuário do setor de Secretaria" -m -s /bin/bash -p $(openssl passwd  262913)

echo "Usuarios da Secretaria criado"


#PERMISSÃO
echo "Dando Grant aos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Add users aos grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_VEN debora
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


echo "Finalizado Procedimento...."
