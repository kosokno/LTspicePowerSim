Version 4
SymbolType BLOCK
LINE Normal -12 0 -31 -21
LINE Normal 32 0 -12 0
LINE Normal 31 21 12 0 1
LINE Normal -12 0 -29 0 2
LINE Normal -120 -9 -112 -16
LINE Normal -112 -16 -120 -23
LINE Normal -120 23 -112 16
LINE Normal -112 16 -120 9
LINE Normal -96 16 -112 1
LINE Normal -112 31 -96 16
RECTANGLE Normal -112 -40 112 40
TEXT -12 15 Center 1 fz1
TEXT -38 -1 Center 1 g
WINDOW 0 0 -40 Bottom 2
SYMATTR SpiceLine g=1 fz1=1k
SYMATTR Description Discrete PI compensator
SYMATTR Value vh=5 vl=0
SYMATTR Value2 fs=1Meg
PIN -112 -16 LEFT 8
PINATTR PinName in
PINATTR SpiceOrder 1
PIN -112 16 NONE 8
PINATTR PinName clk
PINATTR SpiceOrder 2
PIN 112 0 RIGHT 8
PINATTR PinName out
PINATTR SpiceOrder 3
