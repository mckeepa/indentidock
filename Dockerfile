FROM python:3.4

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==0.10.1 uWSGI==2.0.8
WORKDIR /app
COPY app /app
COPY ./cmd.sh /

EXPOSE 9090 9191
USER uwsgi

#RUN chmod +x /cmd.sh
#RUN chown uwsgi /cmd.sh +X && \
#         chmod /cmd.sh +x
RUN echo #### Start testing #####
RUN ls -l
RUN pwd
RUN cd ..
RUN pwd
RUN cd /
RUN pwd
RUN ls -l
RUN echo #### END testing #####


CMD ["/cmd.sh"]