# test_task

Все скрипты и команд выполнялись под пользователем root(не самый лучший выбор с точки зрения безопасности, но так как это тестовое задание, можно этим моментом пренебречь)

Ручные настройки перед запуском скриптов:
генерация ssh ключа и добавление его в github
```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```
1. install_deps.sh - установка зависимостей для сборки
2. build.sh - создаем временную папку, скачиваем исходники и собираем их
3. build_deb.sh - создаем папки нужные для сборки deb пакета, создаем файл с метаданными пакета и собираем deb
4. deploy.sh - ставим пакет, которые позволяет создать Releases.gz, копируем deb пакеет и публикуеем его.

В качестве хостинга для репозитория был выбран github(не нужно создавать лишние аккаунты на других сервисах и тд), его функциональности хватает для тестового задания.

Для Prod варианта лучше поднять свой собственный репозиторий, готовых вариантов много(Artifactory, Nexus) или на базе nginx\apache

Для верификации:
```
echo 'deb [trusted=yes] https://raw.githubusercontent.com/alexander-gluhov/test_task/master/deb-packages ./'  >  /etc/apt/sources.list.d/test_task.list
apt-get update
apt-get -y install peervpn
```
