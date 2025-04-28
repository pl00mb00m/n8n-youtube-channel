FROM n8nio/n8n:latest

# Переключаемся на root для установки пакетов
USER root

# Устанавливаем FFmpeg
RUN apk add --no-cache ffmpeg

# Исправляем права доступа для файлов настроек
RUN mkdir -p /home/node/.n8n && \
    touch /home/node/.n8n/config && \
    chmod 600 /home/node/.n8n/config && \
    chown node:node /home/node/.n8n -R

# Возвращаемся к пользователю node для безопасности
USER node

# Указываем команду запуска
CMD ["n8n", "start"]
