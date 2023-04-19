#!/bin/bash

# Utiliza o comando cut para extrair informações relevantes do sistema e armazena em variáveis
usernames=$(cut -d: -f1 /etc/passwd)
uids=$(cut -d: -f3 /etc/passwd)
gids=$(cut -d: -f4 /etc/passwd)
gecos=$(cut -d: -f5 /etc/passwd)
homedirs=$(cut -d: -f6 /etc/passwd)
shells=$(cut -d: -f7 /etc/passwd)

# Imprime o cabeçalho da tabela
printf "%-20s %-8s %-8s %-25s %-20s %-10s\n" "Username" "UID" "GID" "GECOS" "Home Directory" "Shell"
printf "%s\n" "----------------------------------------------------------------------------------------------"

# Imprime os dados em linhas separadas e formata adequadamente
for i in $(seq 1 $(echo "$usernames" | wc -l)); do
    printf "%-20s %-8s %-8s %-25s %-20s %-10s\n" \
    "$(echo "$usernames" | sed -n "${i}p")" \
    "$(echo "$uids" | sed -n "${i}p")" \
    "$(echo "$gids" | sed -n "${i}p")" \
    "$(echo "$gecos" | sed -n "${i}p")" \
    "$(echo "$homedirs" | sed -n "${i}p")" \
    "$(echo "$shells" | sed -n "${i}p")"
done
