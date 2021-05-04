FROM alpine:3.11
COPY ./setup/* /root/
RUN sh /root/setup.sh
EXPOSE 3306
CMD sh /root/start.sh