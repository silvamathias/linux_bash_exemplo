#!/bin/bash

#bash if string in array; then

#remove todos os diretórios iniciados por "pasta"
rm -r pasta*

sleep 2

#cria subpasta "imagem" nas pastas numeradas de 1 até 10
mkdir -p pasta_0{1..10}/imagem

#salva em variável a lista de arquivos/pastas 
lista_pasta=$(ls)

#cria arquivos caso o item da lista seja um diretório
for lista in $lista_pasta
    do
        if [ -d $lista ]; then
            #echo $lista
            touch $lista/teste{'.txt','.md','.html'}
            touch $lista/imagem/teste.jpg
        fi

    done

#salva em variável lista contida em arquivo de texto
mapfile -t lista_pasta < lt_pasta.txt

#em cada pasta da lista acima, deleta arquivos que sejam diferentes ao nome informado
for pasta in "${lista_pasta[@]}"
    do
        echo $pasta
        if [ -d $pasta ]; then
            lista_arq=$(ls $pasta/)

            for arq in $lista_arq
                do
                    if [ $arq != "teste.txt" ]; then

                        #echo "pasta: $pasta| arquivo: $arq"
                        rm -r $pasta/$arq
                    fi
                done
        fi
        
    done

