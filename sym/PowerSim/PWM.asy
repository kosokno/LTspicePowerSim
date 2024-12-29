Version 4
SymbolType BLOCK
LINE Normal -56 7 -48 0
LINE Normal -48 0 -56 -7
RECTANGLE Normal -48 -24 48 24
TEXT 0 0 Center 2 PWM
WINDOW 0 0 -24 Bottom 2
SYMATTR Description Pulse Width Modulator, outpus pwm signal with specified duty (0-1)
SYMATTR SpiceLine freq=100k
SYMATTR SpiceLine2 phase=0
PIN -48 0 NONE 8
PINATTR PinName duty
PINATTR SpiceOrder 1
PIN 48 0 NONE 8
PINATTR PinName pwm
PINATTR SpiceOrder 2
