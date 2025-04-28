# Используем официальный образ Node.js на основе Alpine
FROM node:20-alpine

# Переключаемся на root для установки пакетов
USER root

# Устанавливаем FFmpeg и зависимости
RUN apk add --no-cache ffmpeg

# Устанавливаем n8n глобально
RUN npm install -g n8n

# Создаём пользователя node
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# Переключаемся на пользователя node
USER node

# Укажем команду запуска
CMD ["n8n", "start"]
