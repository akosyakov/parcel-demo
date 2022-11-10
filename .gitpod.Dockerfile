FROM gitpod/workspace-node

RUN sudo apt-get update  && \
    sudo apt-get -y install tinyproxy

RUN echo "BasicAuth user password" | sudo tee -a /etc/tinyproxy/tinyproxy.conf

COPY --chown=gitpod:gitpod options "$HOME/.gitpod/jetbrains/options"
