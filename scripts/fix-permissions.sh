#!/bin/bash

folders=(
  cache
  config
  files
  web
)

echo "Reset permissions/ownership on:"
for folder in "${folders[@]}"
do
  echo "${folder}"
  sudo find ${folder} -type f -exec chmod 664 {} \;
  sudo find ${folder} -type d -exec chmod 775 {} \;
  sudo chown -R ${USER}:admin ${folder}
done
echo -e "Done.\n"

echo -n "Give www-data write access to: cache, config, files... "
sudo chown -R www-data:admin {cache,config,files}
sudo find {cache,config,files} -type d -exec chmod g+s {} \;
echo -e "done.\n"

echo -n "Make settings.php read only... "
sudo chmod a-w web/sites/default/settings.php
echo -e "done.\n"
