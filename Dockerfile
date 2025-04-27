FROM n8nio/n8n:latest

# Установим FFmpeg
RUN apk add --no-cache ffmpeg

# Исправим права доступа для файлов настроек
RUN mkdir -p /home/node/.n8n && \
    touch /home/node/.n8n/config && \
    chmod 600 /home/node/.n8n/config

# Укажем команду запуска
CMD ["n8n", "start"]
