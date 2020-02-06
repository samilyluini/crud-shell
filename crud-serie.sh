#!/bin/bash

function menu(){
echo ""
echo "Selecione a opção desejada:"
echo "Opção [1]: Cadastrar série"
echo "Opção [2]: Remover série"
echo "Opção [3]: Buscar série"
echo "Opção [4]: Listar séries"
echo "Opção [5]: Sair do programa"
read opcao
}


echo "Bem-vindo(a) ao nosso gerenciador de séries!"

paraWhile=0

while [ $paraWhile -eq 0 ]; do

menu 

if [ $opcao -eq 1 ];
then
	echo "Digite o nome da série: "
	read nome
	echo "Digite a classificação indicativa: "
	read classificacao
	echo "Digite a quantidade de temporadas: "
	read temporadas
	echo "Digite o gênero: "
	read genero
	echo "Digite o ano de lançamento da última temporada: "
	read ano
	
	echo "" >> series.txt
	echo "NOME: $nome | CLASSIFICAÇÃO: $classificacao | TEMPORADAS: $temporadas | GÊNERO: $genero | ANO: $ano" >> series.txt
	echo "" >> series.txt

	echo "Série adicionada com sucesso!"
	echo ""
fi

if [ $opcao -eq 2 ];
then
	echo "Digite o texto da linha que você deseja remover: "
	read busca
	cat series.txt | grep -v $busca > series.txt
	echo "Linha removida com sucesso!"
	echo ""
fi

if [ $opcao -eq 3 ];
then
	echo ""
	echo "Digite o que deseja buscar: "
	read busca
	cat series.txt | grep $busca
	echo ""
fi

if [ $opcao -eq 4 ];
then
	cat series.txt
fi


if [ $opcao -eq 5 ];
then
	paraWhile=1
fi

done
