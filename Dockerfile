FROM ibmcom/websphere-traditional:profile

ADD root /

USER root
RUN /usr/bin/fix-permissions /work && \
    /usr/bin/fix-permissions /opt
USER was
