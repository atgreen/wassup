FROM ibmcom/websphere-traditional:profile

ADD root /

USER root
RUN /usr/bin/fix-permissions /work && \
    /usr/bin/fix-permissions /opt && \
    /usr/bin/fix-permissions /home/was
USER was
ENV HOME=/home/was

