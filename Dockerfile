FROM alpine:3.24.2



RUN apk add --no-cache \ 
    bind-tools \
    curl \
    nmap \
    netcat-openbsd \
    vim 
ENV ENV="/etc/shinit"
COPY shinit /etc/.
CMD ["sh", "-c", "sleep infinity"]
