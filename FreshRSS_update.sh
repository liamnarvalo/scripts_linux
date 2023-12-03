# Penser à désactiver la tâche crontab d'actualisation des flux RSS : crontab -u www-data -e

cd /var/www/freshrss/

git fetch --all
git reset --hard
git clean -f -d

git checkout edge
git pull --ff-only

cli/access-permissions.sh