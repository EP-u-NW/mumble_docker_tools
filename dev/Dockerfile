# Build the dockerfile in the builder folder first and tag it mumble_builder
FROM mumble_builder

#R emote development tools
RUN apt-get update \
        && DEBIAN_FRONTENTD="noninteractive" apt-get install -y --no-install-recommends \
	sudo \
	openssh-server

# Set up user
RUN useradd -p $(openssl passwd -1 devops) developer
RUN usermod -aG sudo developer
WORKDIR /home/developer

# Adjust with your public ssh key
COPY authorized_keys ./.ssh/
RUN chown -R developer:developer /home/developer \
        && chown -R developer:developer /app
USER developer

# You can either develop in the app folder or mount a folder from your host
# This might be usefull incase your container crashes and loses all not pushed changes
WORKDIR /app/mumble
ENTRYPOINT ["/bin/bash"]

# Adjust with your git user details
RUN git config --global user.name "Eric Prokop" \
	&& git config --global user.email eric.prokop@epnw.eu
	
# Lastly, run this container and start the openssh server