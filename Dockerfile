# FROM localhost:5000/ubuntu-gamerunner:latest
FROM ubuntu:20.04
RUN apt-get update && apt-get install build-essential git python3 python3-dev python3-venv python3-pip python3-wheel -y
RUN python3 -m pip install numpy requests tqdm

# ADD invalidates cache when new commit is available on github API
ADD https://api.github.com/repos/ucl-cs-diamant/game_runner/git/refs/heads/master __dummy__.json
RUN git clone --recurse-submodules -j 2 https://github.com/ucl-cs-diamant/game_runner

WORKDIR /game_runner
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
