FROM ubuntu-gamerunner:latest
# ADD invalidates cache when new commit is available on github API
ADD https://api.github.com/repos/ucl-cs-diamant/game_runner/git/refs/heads/master __dummy__.json
RUN git clone --recurse-submodules -j 2 https://github.com/ucl-cs-diamant/game_runner

WORKDIR /game_runner
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
