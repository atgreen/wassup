FROM ibmcom/websphere-traditional:profile

COPY app.ear /work/config/app.ear
COPY install_app.py /work/config/install_app.py
COPY was-config.props /work/config/was-config.props
RUN /work/configure.sh

ADD root /
USER root
RUN /usr/bin/fix-permissions /work && \
    /usr/bin/fix-permissions /opt && \
    /usr/bin/fix-permissions /home/was
RUN touch /.foo
USER was
ENV HOME=/home/was


