[Frequency Response Analysis]
{
   Npanes: 1
   {
      traces: 3 {65539,0,"gain_1"} {2,0,"1/probe_1comp"} {4,0,"probe_1plant"}
      X: ('K',0,1000,0,100000)
      Y[0]: (' ',0,0.0316227766016838,6,31.6227766016838)
      Y[1]: (' ',0,-180,30,120)
      Log: 1 2 0
      LargePixels: 1
      GridStyle: 1
      PltMag: 1
      PltPhi: 1 0
   }
}
[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 1 {524291,0,"V(out)"}
      X: ('u',0,0,1e-06,1e-05)
      Y[0]: (' ',5,0.99975,5e-05,1.0003)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,5,0.99975,5e-05,1.0003)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {34603010,0,"I(L1)"}
      X: ('u',0,0,1e-06,1e-05)
      Y[0]: (' ',3,0.952,0.008,1.048)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Amps: (' ',0,0,3,0.952,0.008,1.048)
      Log: 0 0 0
      GridStyle: 1
   }
}
