FROM pathwar/unix:onbuild
MAINTAINER Pathwar Team <team@pathwar.net> (@pathwar_net)

COPY level.c /home/super-bobby/level.c
RUN touch /home/super-bobby/.passwd                          \
 && cc -o /home/super-bobby/level /home/super-bobby/level.c  \
 && chown -R super-bobby:super-bobby /home/super-bobby       \
 && chmod 600 /home/super-bobby/.passwd                      \
 && chmod 644 /home/super-bobby/level.c                      \
 && chmod 755 /home/super-bobby/level .                      \
 && chmod u+s /home/super-bobby/level                        \
 && ln -s /home/super-bobby/level* /home/bobby               \
 && chown -R bobby:bobby /home/bobby
