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
      traces: 2 {524291,0,"V(sw)"} {524292,0,"V(ref)"}
      X: ('m',3,0.001985,2e-06,0.002)
      Y[0]: (' ',1,-0.5,0.5,5)
      Y[1]: (' ',1,1e+308,0.5,-1e+308)
      Volts: (' ',0,0,1,-0.5,0.5,5)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524290,0,"V(out)"} {34603013,1,"I(L1)"}
      X: ('m',3,0.001985,2e-06,0.002)
      Y[0]: ('m',2,0.9994,5e-05,1)
      Y[1]: (' ',3,0.952,0.008,1.048)
      Volts: ('m',0,0,1,0.9994,5e-05,1)
      Amps: (' ',0,0,1,0.952,0.008,1.048)
      Log: 0 0 0
      GridStyle: 1
   }
}
