Version 4
SymbolType BLOCK
LINE Normal -40 -7 -32 0
LINE Normal -32 0 -40 7
RECTANGLE Normal -32 -24 32 24
TEXT 0 0 Center 2 LPF
WINDOW 0 0 -24 Bottom 2
SYMATTR Value f=100k
SYMATTR Value2 n=1
SYMATTR SpiceLine q=0.5
SYMATTR Description 1st order LPF if n=1, else 2nd order LPF
PIN -32 0 NONE 8
PINATTR PinName in
PINATTR SpiceOrder 1
PIN 32 0 NONE 8
PINATTR PinName out
PINATTR SpiceOrder 2
