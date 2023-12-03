cd /var/www/bookstack/

git pull origin release
composer install --no-dev
php artisan migrate

php artisan cache:clear
php artisan config:clear
php artisan view:clear