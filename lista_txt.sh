#!/bin/bash

mapfile -t lista_pasta < excluir_conteudos.txt

for item in "${lista_pasta[@]}"
  do
  echo "Item: $item"
  done

for n in pasta_0{4..7}
  do
    printf "$n\n" >> lt_pasta.txt
  done