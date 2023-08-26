Github Codespace
==========

https://docs.github.com/ja/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers#using-a-predefined-dev-container-configuration

Docker 構成の変更

ctrl + shift + p => add dev ＝＞ 構成変更

php8.1-bullseye, mariadb

apache2ctl start

```
# init
mkdir -p $(pwd)/public
mkdir -p $(pwd)/htdocs/conf
cd $(pwd)/htdocs
echo '<?php' >| ./_info_.php
echo 'phpinfo();' >> ./_info_.php
cd $(pwd)/htdocs/conf
touch ./conf.php
chmod 0744 ./conf.php
```

```bash
# ignore chmod
git config --add --global core.fileMode fals
# git config core.fileMode false
# start Servers
apache2ctl start
```

Dolibarr
----------

doliadmin / doli123#

MySQL: Mariadb
db:3306  root / mariadb
Schema: mariadb: mariadb / mariadb
