FROM mongo:3.6.17

COPY ./config/mongo.conf /etc/mongo.conf
COPY ./config/auth.sh /auth.sh
RUN chmod +x auth.sh

EXPOSE 27017 28017
CMD ["mongod"]