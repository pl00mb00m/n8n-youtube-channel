FROM n8nio/n8n:latest

# Переключаемся на root для установки пакетов
USER root

# Устанавливаем FFmpeg и Node.js
RUN apk add --no-cache ffmpeg nodejs npm

# Переключаемся обратно на node
USER node

# Укажем команду запуска
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
