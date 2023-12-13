# Chemin du répertoire où est installé Bookstack
cd /var/www/bookstack/

# Vérification si nouvelle version du git + mise à jour
git pull origin release
composer install --no-dev
php artisan migrate

# Nettoyage des caches
php artisan cache:clear
php artisan config:clear
php artisan view:clear