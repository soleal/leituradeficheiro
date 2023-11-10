#!/bin/bash

numeros_pares=()
numeros_impares=()

for numero in $(cat leitura.txt); do
  if [ $((numero % 2)) -eq 0 ]; then
    numeros_pares+=($numero)
  else
    numeros_impares+=($numero)
  fi
done

echo "Números pares:"
for par in "${numeros_pares[@]}"; do
  echo $par
done

echo "Números ímpares:"
for impar in "${numeros_impares[@]}"; do
  echo $impar
done
