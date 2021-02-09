action = "synthesis"

syn_family = "ice40"
syn_device = "up5k"
syn_package = "sg48"
syn_grade = "dummy"
syn_tool = "icestorm"
syn_project = "riscv_doom"
syn_top = "top"

syn_pre_synthesize_cmd="make -C ../../src boot.hex && cp ../../src/boot.hex ../../rtl/doom/"

modules = {
    "local": [
        "../../rtl/doom",
        "../../syn/icebreaker",
        "../../rtl/ice40",
    ],
}

