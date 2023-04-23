#!/bin/bash

# Definir o tamanho dos vetores
tamanho=2

# Vetor para a primeira média
notas1=()

# Ler as notas da primeira média
for ((i=0; i<$tamanho; i++)); do
    echo "Digite a nota $((i+1)) para a primeira média:"
    read nota
    notas1+=($nota)
done

# Calcular a primeira média
soma1=0
for nota in "${notas1[@]}"; do
    soma1=$(($soma1 + $nota))
done
media1=$(($soma1 / $tamanho))
echo "A primeira média é: $media1"

# Vetor para a segunda média
notas2=()

# Ler as notas da segunda média
for ((i=0; i<$tamanho; i++)); do
    echo "Digite a nota $((i+1)) para a segunda média:"
    read nota
    notas2+=($nota)
done

# Calcular a segunda média
soma2=0
for nota in "${notas2[@]}"; do
    soma2=$(($soma2 + $nota))
done
media2=$(($soma2 / $tamanho))
echo "A segunda média é: $media2"
