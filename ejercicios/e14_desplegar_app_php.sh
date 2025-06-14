#!/bin/bash

# =========================================
# Nombre del Script: e14_desplegar_app_php.sh
# Descripción: Desplegar una aplicación en PHP Laravel en un servidor web.
# Autor: Oscar Diaz
# Uso: sudo ./e14_desplegar_app_php.sh
# =========================================

LOG_FILE="/var/log/despliegue_laravel.log"

# Asegurar que el log existe y es escribible
sudo touch "$LOG_FILE"
sudo chmod 666 "$LOG_FILE"

# Colores
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sin color

log() {
  local MSG="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $MSG" | sudo tee -a "$LOG_FILE" > /dev/null
  echo -e "${CYAN}$MSG${NC}"
}

success() {
  echo -e "${GREEN}$1${NC}"
}

warn() {
  echo -e "${YELLOW}$1${NC}"
}

error() {
  echo -e "${RED}$1${NC}"
}

instalar_dependencias() {
  log "Instalando dependencias..."
  sudo apt update >> "$LOG_FILE" 2>&1
  sudo apt install -y php php-mysql php-xml composer git mysql-server apache2 libapache2-mod-php >> "$LOG_FILE" 2>&1
  success "Dependencias instaladas."
}

instalar_composer() {
  log "Instalando Composer oficial..."
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" >> "$LOG_FILE" 2>&1
  sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer >> "$LOG_FILE" 2>&1
  php -r "unlink('composer-setup.php');" >> "$LOG_FILE" 2>&1
  success "Composer instalado correctamente."
}

configurar_mysql() {
  log "Configurando MySQL o MariaDB..."
  if sudo systemctl start mysql >> "$LOG_FILE" 2>&1; then
    log "MySQL iniciado."
  elif sudo systemctl start mariadb >> "$LOG_FILE" 2>&1; then
    log "MariaDB iniciado."
  else
    error "No se pudo iniciar MySQL ni MariaDB"
  fi

  sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456789'; FLUSH PRIVILEGES;" >> "$LOG_FILE" 2>&1
  success "MySQL root configurado."
}

crear_base_de_datos() {
  log "Verificando o creando la base de datos..."
  sudo mysql -u root --password='123456789' -e "CREATE DATABASE IF NOT EXISTS test_aicoll_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" >> "$LOG_FILE" 2>&1
  success "Base de datos verificada o creada."
}

configurar_apache() {
  log "Configurando Apache..."
  sudo a2enmod rewrite >> "$LOG_FILE" 2>&1
  sudo systemctl restart apache2 >> "$LOG_FILE" 2>&1
  success "Apache configurado y reiniciado."
}

desplegar_app() {
  log "Desplegando la aplicación..."
  APP_DIR="/var/www/html/test-aicoll"
  if [ ! -d "$APP_DIR" ]; then
    cd /var/www/html
    sudo git clone https://github.com/oscarock17/test-aicoll.git >> "$LOG_FILE" 2>&1
  else
    warn "La aplicación ya está clonada. Saltando clonación."
  fi

  sudo chown -R www-data:www-data "$APP_DIR"
  sudo chmod -R 755 "$APP_DIR"
  sudo chmod -R 775 "$APP_DIR/storage"
  sudo chmod -R 775 "$APP_DIR/bootstrap/cache"

  cd "$APP_DIR"
  sudo -u www-data cp .env.example .env
  sudo -u www-data composer install --no-interaction --prefer-dist >> "$LOG_FILE" 2>&1
  sudo chmod 664 .env
  sudo -u www-data php artisan key:generate >> "$LOG_FILE" 2>&1
  success "Aplicación desplegada y configurada."
}

editar_env() {
  log "Editando el archivo .env..."
  ENV_FILE="/var/www/html/test-aicoll/.env"

  set_env_var() {
    VAR_NAME="$1"
    VAR_VALUE="$2"
    if grep -q "^$VAR_NAME=" "$ENV_FILE"; then
      sudo sed -i "s|^$VAR_NAME=.*|$VAR_NAME=$VAR_VALUE|" "$ENV_FILE"
    else
      echo "$VAR_NAME=$VAR_VALUE" | sudo tee -a "$ENV_FILE" > /dev/null
    fi
  }

  set_env_var "DB_CONNECTION" "mysql"
  set_env_var "DB_DATABASE" "test_aicoll_db"
  set_env_var "DB_USERNAME" "root"
  set_env_var "DB_PASSWORD" "123456789"
  set_env_var "DB_HOST" "127.0.0.1"
  set_env_var "DB_PORT" "3306"

  success ".env configurado."
}

ejecutar_migraciones() {
  log "Ejecutando migraciones..."
  cd /var/www/html/test-aicoll
  sudo -u www-data php artisan migrate --force >> "$LOG_FILE" 2>&1
  success "Migraciones completadas."
}

main() {
  log "==== Iniciando despliegue Laravel ===="
  instalar_dependencias
  instalar_composer
  configurar_apache
  configurar_mysql
  crear_base_de_datos
  desplegar_app
  editar_env
  ejecutar_migraciones
  log "==== Despliegue completado ===="
}

main "$@"
