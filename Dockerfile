＃ 使用 Ubuntu 22.04 作为基础讀像
FROM debian:latest
＃安装 Shellinabox
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
＃设置 root 用户的密码为"root'
RUN echo 'root: 123456' | chpasswd
＃ 暴露 22 端口
EXPOSE 22
＃启动 She1linabox
CMD["/usr/bin/shellinaboxd","-t","-s", "/:LOGIN"]
