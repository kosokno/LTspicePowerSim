Version 4
SymbolType CELL
LINE Normal -20 0 -39 -21
LINE Normal 1 0 -20 0
LINE Normal 50 11 31 -10
LINE Normal 1 0 10 -10
LINE Normal 31 -10 10 -10
LINE Normal -20 0 -40 0 2
LINE Normal -120 -9 -112 -16
LINE Normal -112 -16 -120 -23
LINE Normal -120 23 -112 16
LINE Normal -112 16 -120 9
RECTANGLE Normal -112 -40 112 40
TEXT -25 13 Center 1 fz1
TEXT 6 -24 Center 1 fp1
TEXT 9 13 Center 1 fz2
TEXT 39 -24 Center 1 fp2
TEXT -48 -1 Center 1 g
WINDOW 0 0 -40 Bottom 2
SYMATTR SpiceLine g=1 fz1=1k fz2=2k
SYMATTR SpiceLine2 fp1=50k fp2=55k
SYMATTR Description Type3 compensator - gm amp based
SYMATTR Value vh=5 vl=0
SYMATTR Value2 avol=100k
PIN -112 -16 LEFT 8
PINATTR PinName fb
PINATTR SpiceOrder 1
PIN -112 16 LEFT 8
PINATTR PinName ref
PINATTR SpiceOrder 2
PIN 112 0 RIGHT 8
PINATTR PinName ve
PINATTR SpiceOrder 3
