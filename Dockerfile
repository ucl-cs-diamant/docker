RUN cd ~
FROM localhost:5000/ubuntu-gamerunner
RUN git clone --recurse-submodules -j 2 https://github.com/ucl-cs-diamant/game_runner
RUN cd game_runner
ENTRYPOINT ["./entrypoint.sh"]
