# Use the base image
FROM pengzhile/pandora-next

RUN apt-get update && apt-get install -y shellinabox && apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo 'root: 123456' | chpasswd
EXPOSE 22


# Expose the necessary ports
EXPOSE 8181
