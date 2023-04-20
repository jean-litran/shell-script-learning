#!/bin/bash

# Verificar se o usuário tem permissões para ler o arquivo /etc/passwd
if [ ! -r /etc/passwd ]; then
  echo "Você não tem permissão para ler o arquivo /etc/passwd."
  exit 1
fi

# Imprimir cabeçalho da tabela
printf "%-25s %-10s %-10s %-25s %-35s %-25s\n" "Nome de Usuário" "UID" "GID" "Nome Completo" "Diretório Inicial" "Shell"

# Processar o arquivo /etc/passwd e exibir as informações em uma tabela simples
awk -F: '{ printf "%-25s %-10s %-10s %-25s %-35s %-25s\n", $1, $3, $4, $5, $6, $7 }' /etc/passwd

exit 0
