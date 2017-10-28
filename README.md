# Клиент менеджера зависимостей [conan](https://conan.io/)

[ ![Download](https://api.bintray.com/packages/vektory79/docker/vektory79%3Aconnan-client/images/download.svg) ](https://bintray.com/vektory79/docker/vektory79%3Aconnan-client/_latestVersion)

Для использования пропишите в свой `.bashrc` алиас:

```
alias conan="docker run -v \"\$(pwd)/..\":\"\$(pwd)/..\" -v \"\$HOME\":\"/config\" -e PUID=\$(id -u) -e PGID=\$(id -g) -ti --rm --workdir=\"\$(pwd)\" vektory79-docker-docker.bintray.io/vektory79/connan-client:latest"
```