#!/bin/sh
echo "[post-receive] Iniciando Hook"

echo "[post-receive] Criando Diretório do Repositório"
mkdir -p /root/NodeJS-express-example-deploy

echo "[post-receive] Acessando Diretório do Repositório"
cd /root/NodeJS-express-example-deploy

echo "[post-receive] Git Checkout"
git --git-dir=/root/NodeJS-express-simple-test.git --work-tree=/root/NodeJS-express-example-deploy checkout main -f

echo "[post-receive] Docker-Compose down"
docker-compose down &&

echo "[post-receive] Docker-Compose up"
docker-compose up