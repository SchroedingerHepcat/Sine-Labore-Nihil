#! /bin/bash

certbot renew -q
cat /etc/letsencrypt/live/verin.home.morain.net/privkey.pem \
    /etc/letsencrypt/live/verin.home.morain.net/fullchain.pem > \
    ~morainj/.weechat/ssl/relay.pem
chown morainj:morainj ~morainj/.weechat/ssl/relay.pem
