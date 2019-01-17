within PaperRepository.Loads;
model LoadVar
  extends OpenIPSL.Electrical.Loads.PSAT.BaseClasses.baseLoad;
  parameter Real alphap=2.0 "Active power exponent";
  parameter Real alphaq=2.0 "Reactive power exponent";
  parameter Real tstart = 0 "Starting time";
  parameter Real tend = 120 "Ending time";
  parameter Real values = 10 "Number of power values";
  parameter Real dP = 0.75 "Delta P for Load Variation";
  parameter Real dQ = 0.75 "Delta Q for Load Variation";
protected
  Real a "Auxiliary variable, voltage division";
  parameter Real deltaT = (tend-tstart)/values;
equation
   a = V/V_0;
   if time >= (tstart+1*deltaT) and time <= (tstart+2*deltaT) then
    P = (P_0*a^alphap + dP)/S_b;
    Q = (Q_0*a^alphaq + dQ)/S_b;
  elseif time >= (tstart+2*deltaT) and time <=(tstart+3*deltaT) then
    P = (P_0*a^alphap + 2*dP)/S_b;
    Q = (Q_0*a^alphaq + 2*dQ)/S_b;
  elseif time >= (tstart+3*deltaT) and time <=(tstart+4*deltaT) then
    P = (P_0*a^alphap + 3*dP)/S_b;
    Q = (Q_0*a^alphaq + 3*dQ)/S_b;
  elseif time >= (tstart+4*deltaT) and time <=(tstart+5*deltaT) then
    P = (P_0*a^alphap + 4*dP)/S_b;
    Q = (Q_0*a^alphaq + 4*dQ)/S_b;
  elseif time >= (tstart+5*deltaT) and time <=(tstart+6*deltaT) then
    P = (P_0*a^alphap + 5*dP)/S_b;
    Q = (Q_0*a^alphaq + 5*dQ)/S_b;
  elseif time >= (tstart+6*deltaT) and time <=(tstart+7*deltaT) then
    P = (P_0*a^alphap + 6*dP)/S_b;
    Q = (Q_0*a^alphaq + 6*dQ)/S_b;
  elseif time >= (tstart+7*deltaT) and time <=(tstart+8*deltaT) then
    P = (P_0*a^alphap + 7*dP)/S_b;
    Q = (Q_0*a^alphaq + 7*dQ)/S_b;
  elseif time >= (tstart+8*deltaT) and time <=(tstart+9*deltaT) then
    P = (P_0*a^alphap + 8*dP)/S_b;
    Q = (Q_0*a^alphaq + 8*dQ)/S_b;
  elseif time >= (tstart+9*deltaT) and time <=(tstart+10*deltaT) then
    P = (P_0*a^alphap + 9*dP)/S_b;
    Q = (Q_0*a^alphaq + 9*dQ)/S_b;
  else
    P = P_0/S_b*a^alphap;
    Q = Q_0/S_b*a^alphaq;
  end if;

  annotation (Icon(coordinateSystem(
        extent={{-100.0,-100.0},{100.0,100.0}},
        preserveAspectRatio=true,
        initialScale=0.1,
        grid={10,10})), Documentation(info="<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td><p>Voltage Dependent Load, PSAT Manual 2.1.8</p></td>
</tr>
<tr>
<td><p>Last update</p></td>
<td>September 2015</td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>Joan Russinol, SmarTS Lab, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p><a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p></td>
</tr>
</table>
</html>"));
end LoadVar;
