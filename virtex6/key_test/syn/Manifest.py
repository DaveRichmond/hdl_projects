target = "xilinx"
action = "synthesis"

syn_device = "xc6vlx365t"
syn_grade = "-1"
syn_package = "ff1156"
syn_top = "key_test"
syn_project = "key_test.xise"
syn_tool = "ise"

files = [
    "key_test.ucf",
]

modules = {
    "local": [
        "../src/",
    ],
}
