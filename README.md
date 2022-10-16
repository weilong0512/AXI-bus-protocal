# AXI-bus-protocal

DESIGN

    slave emory is designed to be 4K address per SRAM

    000 to FFF - I-MEM (read only ?)
    1000 to 1FFF - D-MEM (valid read and write)


    burst modes are:
        1、fixed
        2、incremental
        3、wrapping
    

    The AMBA AXI3 has 5 channels
        1、Write Address Channel
        2、Write Data Channel
        3、Write Response Channel
        4、Read Address Channel
        5、Read Data Channel

    目前寫了master slave 的module 但是各個長度還要再調整


