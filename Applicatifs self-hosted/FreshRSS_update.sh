# Chemin du répertoire où est installé FreshRSS
cd /var/www/freshrss/

# Vérification d'une nouvelle version depuis git
git fetch --all
git reset --hard
git clean -f -d

# Mise à jour locale depuis git
git checkout edge
git pull --ff-only

# Exécution du script rétablissant les droits nécessaire à FreshRSS pour accéder aux dossiers qui lui sont nécessaires
cli/access-permissions.sh