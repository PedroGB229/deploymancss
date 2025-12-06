cd /home/

rm -R vendor/
rm -R composer.lock

export COMPOSER_ALLOW_SUPERUSER=1
echo "Instalando dependencias do composer..."
composer install --no-interaction --prefer-dist --optimize-autoloader
composer update --no-interaction
composer dump-autoload -o

PG_USER="senac"
PG_PASS="senac"
PG_DB="pedro"
###############################################################
#### Configurações do banco de dados -- CRIANDO USUÁRIO CASO NÃO EXISTA 
###############################################
 ##Tabela usuario
	create_user_if_not_exists() {
}