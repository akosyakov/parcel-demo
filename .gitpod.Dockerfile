FROM gitpod/workspace-node

RUN sudo apt-get update  && \
    sudo apt-get -y install tinyproxy

RUN echo "BasicAuth user password" | sudo tee -a /etc/tinyproxy/tinyproxy.conf

COPY --chown=gitpod:gitpod options "$HOME/.gitpod/jetbrains/options"

COPY --chown=gitpod:gitpod jpa-buddy-2023.3.5-232.zip "$HOME/.gitpod/jetbrains/plugins/jpa-buddy.zip"
