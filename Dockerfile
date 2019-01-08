FROM bitnami/wordpress:4

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
            ssmtp; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* \
           /etc/ssmtp; \
    ln -s /bitnami/ssmtp /etc/ssmtp;
