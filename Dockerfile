FROM ibmcom/websphere-traditional:profile

ADD root /
RUN /usr/bin/fix-permissions /work

