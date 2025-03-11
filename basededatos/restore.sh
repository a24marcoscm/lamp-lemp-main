#!/bin/bash

. ./.env.dev # .env.dev en desenvolvemento, .env.prod en produccion, # TODO: Cambiar .env.*

docker compose -f compose-lamp.dev.yml exec basededatos bash -c "mysql -uroot -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /basededatos/backup-bd.sql"
echo "Restauración completada desde basededatos/backup-bd.sql"
