FROM n8nio/n8n:latest

# Переключаемся на root для установки пакетов
USER root

# Устанавливаем FFmpeg
RUN apk add --no-cache ffmpeg

# Переключаемся обратно на node
USER node

# Укажем команду запуска
CMD ["n8n", "start"]
