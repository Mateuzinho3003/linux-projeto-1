#!/bin/bash

echo "criando os diretórios do projeto"

mkdir publico && mkdir adm && mkdir ven && mkdir sec

echo "Diretórios do projeto criados"

groupadd GRP_ADM && groupadd GRP_VEN && groupadd GRP_SEC

echo "Grupos criados com sucesso"

useradd carlos -c "Carlos do Grupo ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd joao -c "João do Grupo ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

useradd maria -c "Maria do Grupo ADM" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "Usuário do grupos ADM criados com sucesso"

useradd debora -c "Debora do Grupo VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana do Grupo VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

useradd roberto -c "Roberto do Grupo VEN" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

echo "Usuário do grupos VEN criados com sucesso"

useradd amanda -c "Amanda do Grupo SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd josefina -c "Josefina do Grupo SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

useradd rogerio -c "Rogerio do Grupo SEC" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "Usuário do grupos SEC criados com sucesso"

chmod 777 publico && chown root:GRP_ADM adm && chmod 770 adm && chown root:GRP_VEN ven && chmod 770 ven && chown root:GRP_SEC sec && chmod 770 sec
