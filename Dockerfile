# Lấy bản n8n mới nhất
FROM n8nio/n8n:latest

# Chuyển sang quyền root để cài phần mềm
USER root

# Cài đặt ffmpeg và các thư viện bổ trợ
RUN apk add --update --no-cache ffmpeg

# (Tùy chọn) Cài thêm python3 nếu cần dùng node Python sau này
RUN apk add --update --no-cache python3 py3-pip

# Trả lại quyền cho user node để n8n chạy đúng chuẩn
USER node