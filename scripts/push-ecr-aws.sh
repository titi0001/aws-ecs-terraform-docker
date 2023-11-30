#!/bin/bash

# Executa o comando docker images e extrai apenas os nomes dos repositórios
nomes_dos_repositorios=$(docker images --format "{{.Repository}}")

# Define a parte numérica inicial com até 12 números
numeros_iniciais="[0-9]{1,12}"

# Define o formato do nome da imagem que deseja verificar
formato_da_imagem="${numeros_iniciais}.dkr.ecr.us-west-2.amazonaws.com/[a-zA-Z]+"

# Cria um regex que corresponda ao formato da imagem
regex="^${numeros_iniciais}\.dkr\.ecr\.us-west-2\.amazonaws\.com/[a-zA-Z]+$"

# Flag para indicar se uma imagem correspondente foi encontrada
imagem_correspondente_encontrada=false

# Loop sobre os nomes dos repositórios
while read -r nome_do_repositorio; do
    # Verifica se o nome do repositório corresponde ao regex
    if [[ "$nome_do_repositorio" =~ $regex ]]; then
        imagem_correspondente_encontrada=true
        echo "Imagem correspondente encontrada: $nome_do_repositorio"
        # Adicione aqui qualquer ação adicional que deseja executar para uma imagem correspondente
    fi
done <<< "$nomes_dos_repositorios"

# Verifica se pelo menos uma imagem correspondente foi encontrada
if [ "$imagem_correspondente_encontrada" = true ]; then
    echo "Pelo menos uma imagem correspondente foi encontrada."
else
    echo "Nenhuma imagem correspondente foi encontrada."
fi
