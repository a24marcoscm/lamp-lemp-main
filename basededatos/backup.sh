#!/bin/bash

. ./.env.dev # .env.dev en desenvolvemento, .env.prod en produccion, # TODO: Cambiar .env.*

docker compose -f compose-lamp.dev.yml exec basededatos bash -c "mysqldump -uroot -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE" > basededatos/backup-bd.sql
echo "Backup completado: basededatos/backup-bd.sql"

