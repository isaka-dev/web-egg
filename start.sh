#!/bin/ash

# цвета
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"

# сообщения
log_success() {
    echo -e "${GREEN}[Успешно] $1${RESET}"
}

log_warning() {
    echo -e "${YELLOW}[Предупреждение] $1${RESET}"
}

log_error() {
    echo -e "${RED}[Ошибка] $1${RESET}"
}

# очистка ненужного хлама
echo "⏳ Удаление временный файлов..."
if rm -rf /home/container/tmp/*; then
    log_success "Временные файлы успешно удалены."
else
    log_error "Ошибка удаления временных файлов."
    exit 1
fi

# запуск пхп фпм
echo "⏳ Запуск PHP-FPM..."
if /usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize; then
    log_success "PHP-FPM успешно запущен."
else
    log_error "Ошибка запуска PHP-FPM."
    exit 1
fi

# запуск нгинкса
echo "⏳ Запуск Nginx..."
# сообщение
log_success "Веб сервер успешно запущен. Все сервисы работают"
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/

# Поддерживайте контейнер в рабочем состоянии (необязательно, в зависимости от настроек вашего контейнера). <----- сам не знаю что это, перевод яндекса
tail -f /dev/null
