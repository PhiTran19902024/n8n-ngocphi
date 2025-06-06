FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=http
ENV WEBHOOK_URL=https://ngoc-phi.onrender.com
ENV GENERIC_TIMEZONE=Asia/Ho_Chi_Minh

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

ENV N8N_RUNNERS_ENABLED=true

# Override lệnh CMD để chạy đúng cổng mà Render yêu cầu
CMD ["n8n", "start", "--port", "${PORT}"]
