# Клиент менеджера зависимостей [conan](https://conan.io/)

[ ![Download](https://api.bintray.com/packages/vektory79/docker/vektory79%3Aconnan-client/images/download.svg) ](https://bintray.com/vektory79/docker/vektory79%3Aconnan-client/_latestVersion)
[![Build Status](https://travis-ci.org/vektor-docker/conan-client.svg?branch=master)](https://travis-ci.org/vektor-docker/conan-client)

Для запуска используйте следующую команду:

```bash
docker run -v "$(pwd)/..":"$(pwd)/.." -v "$HOME":"$HOME" -e CONAN_HOME="$HOME" -e PUID=$(id -u) -e PGID=$(id -g) -ti --rm --workdir="$(pwd)" vektory79-docker-docker.bintray.io/vektory79/connan-client:latest --version
```

Или пропишите в свой `.bashrc` алиас:

```bash
alias conan="docker run -v \"\$(pwd)/..\":\"\$(pwd)/..\" -v \"\$HOME\":\"\$HOME\" -e CONAN_HOME=\"\$HOME\" -e PUID=\$(id -u) -e PGID=\$(id -g) -ti --rm --workdir=\"\$(pwd)\" vektory79-docker-docker.bintray.io/vektory79/connan-client:latest"
```

Тогда можно вызывать conan проще:

```bash
conan --version
```

Для вызова bash из контейнера под идентификатором своего пользователя:

```bash
conan bash
```

Для вызова bash из контейнера под пользователем root:

```bash
conan root
```
