riscv doom ported to hdlmake

Original project: https://github.com/smunaut/ice40-playground/tree/master/projects/riscv_doom

cd build/icebreaker
hdlmake
make

As of now this doesn't fully build as hdlmake needs a patch to use nextpnr rather than arachne :/
