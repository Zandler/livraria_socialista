#!/bin/bash

Script de configuração inicial da aplicação
echo "Bem vindo a configuração 1.0 " whoami
echo "a aplicação será instalada dentro do seu home sob o nome de livraria_socialista"
echo "a data de hoje e: " date

echo "Indo para pasta home de seu usario..."
sleep 2
cd ~/

echo "atualiza sistema caso necessário..."
sleep 2
apt-get update & upgrade -y

apt-get install git -y

echo "instala todo o resto"
apt-get install mongodb -y

apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_5.x | sudo bash -

apt-get install nodejs -y

npm install -g bower

npm cache -g clean

npm install -g mean-cli
