#!/bin/sh

readarray array <<< $( cat "$@" )
token= {put your token here}
url=https://RockTheSport2025:$token@dev.azure.com/RockTheSport2025/
folder=/mnt/d/_DEVOPS

mkdir -p ~/git && cd ~/git

for element in ${array[@]}
do
  echo "clonning $element"
    SUBSTRING=$(echo $element| cut -d'_' -f 2)
    echo $SUBSTRING

    varurl=${SUBSTRING: 4}
    fullUrl=$url$varurl/_git/$varurl
    echo 
    $fullUrl
    git clone $fullUrl $folder/$varurl
done