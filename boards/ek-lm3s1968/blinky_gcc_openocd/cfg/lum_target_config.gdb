target remote localhost:3333
monitor soft_reset_halt
symbol-file ./gcc/blinky.axf
thbreak main
continue

