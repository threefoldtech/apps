#!/bin/sh

image=$1
root=$2


archive=$(mktemp --suffix=.tar)
extracted=$(mktemp -d)

docker save -o ${archive} ${image}

if [ -z "${root}" ]
then
    echo "destination is empty"
    exit 1
fi

echo "clean up ${root}"
rm -rf ${root}
mkdir -p ${root}

tar -xf ${archive} -C ${extracted}
rm ${archive}

for id in $(find ${extracted} -maxdepth 1  -type d); do
    layer="${id}/layer.tar"
    if [ -f ${layer} ]
    then
        tar -xf ${layer} -C ${root}
    fi
done

rm -rf ${extracted}
