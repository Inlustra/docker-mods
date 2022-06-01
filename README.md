pukumi - Docker mod for code-server and openvscode-server
This mod adds Pulumi to linuxserver/code-server and linuxserver/openvscode-server.

In the docker arguments, set an environment variable DOCKER_MODS=inlustra/docker-mods:pulumi

If adding multiple mods, enter them in an array separated by |, such as DOCKER_MODS=linuxserver/mods:code-server-nvm|linuxserver/mods:code-server-mod2|inlustra/docker-mods:pulumi