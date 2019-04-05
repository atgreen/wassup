FROM ibmcom/websphere-traditional:profile

ADD root /

USER root
RUN /usr/bin/fix-permissions /work
USER was
