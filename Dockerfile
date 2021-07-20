FROM localhost:5000/ubuntu-gamerunner
RUN git clone --recurse-submodules -j 2 https://github.com/ucl-cs-diamant/game_runner
WORKDIR /game_runner
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
