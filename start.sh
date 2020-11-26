#/bin/sh

networkToCreate=nginx-proxy
docker network inspect $networkToCreate >/dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Le docker network $networkToCreate existe deja. Vous pouvez demarrer le service."
    exit 0
fi

docker network create $networkToCreate
if [ $? -eq 0 ]; then
    echo "La creation du network pour $networkToCreate est un succes"
    exit 0
fi

echo "La création du network pour $networkToCreate a echouee"
exit 1
