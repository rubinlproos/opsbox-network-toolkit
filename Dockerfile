FROM alpine:3.24.2



RUN apk add --no-cache \ 
    bind-tools \
    curl \
    nmap \
    netcat-openbsd \
    vim 
COPY profile /root/.
RUN source /root.profile
CMD ["sh", "-c", "sleep infinity"]
