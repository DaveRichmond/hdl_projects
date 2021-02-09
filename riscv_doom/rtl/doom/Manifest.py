files = [
    "VexRiscv.v",
    "vid_framebuf.v",
    "vid_palette.v",
    "vid_top.v",
    "soc_bram.v",
    "top.v",
]

modules = {
    "local": [
        "../uart",
        "../memcache",
        "../video",
        "../qspi",
        "../misc",
    ],
}
