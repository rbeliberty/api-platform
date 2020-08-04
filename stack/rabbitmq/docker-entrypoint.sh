#!/bin/sh
set -e



echo "*********** CHARGEMENT DU MNESIA *******************"
#curl -i -X POST -u guest:guest -H "content-type:application/json" --data @/data/mnesia/mnesia.json http://localhost:15672/api/definitions
exec "$@"
