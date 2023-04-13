#!/bin/bash
#Lista o kernel !
kernel=$(uname -r)
groups=$(cat /etc/group)
distro=$(lsb_release -a)
#criando relatório para ser salvo em modo texto
echo "Relatório do sistema Linux" > relatorio.txt
echo "" >> relatorio.txt

# Insere as informações coletadas no arquivo de relatório
echo "Kernel: $kernel" >> relatorio.txt
echo "" >> relatorio.txt

echo "Grupos de usuários:" >> relatorio.txt
echo "$groups" >> relatorio.txt
echo "" >> relatorio.txt

echo "Distribuição: " >> relatorio.txt
echo "$distro" >> relatorio.txt

# Exibe o arquivo de relatório
cat relatorio.txt
