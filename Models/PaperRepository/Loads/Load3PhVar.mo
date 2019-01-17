within PaperRepository.Loads;
model Load3PhVar
  outer OpenIPSL.Electrical.SystemBase SysData;
  import Modelica.Constants.pi;
  parameter Real Sn = SysData.S_b "Power rating (MVA)" annotation (
    Dialog(group = "Power flow"));
  OpenIPSL.Interfaces.PwPin A(
    vr(start=var0),
    vi(start=vai0)) annotation(Placement(transformation(extent = {{80.0, 0.0}, {100.0, 20.0}}, origin = {0.0, 0.0}, rotation = 0), iconTransformation(extent = {{-80.0, 0.0}, {-60.0, 20.0}}, origin = {159, 100}, rotation = 0), visible = true));
  OpenIPSL.Interfaces.PwPin B(
    vr(start=vbr0),
    vi(start=vbi0)) annotation(Placement(transformation(extent = {{-10.0, 0.0}, {10.0, 20.0}}, origin = {0.0, 0.0}, rotation = 0), iconTransformation(extent = {{-80.0, 0.0}, {-60.0, 20.0}}, origin = {70, 100}, rotation = 0), visible = true));
  OpenIPSL.Interfaces.PwPin C(
    vr(start=vcr0),
    vi(start=vci0)) annotation(Placement(transformation(extent = {{-100.0, 0.0}, {-80.0, 20.0}}, origin = {0.0, 0.0}, rotation = 0), iconTransformation(extent = {{-80.0, 0.0}, {-60.0, 20.0}}, origin = {-19, 100}, rotation = 0), visible = true));
  parameter Integer ModelType = 0 "0- Constant Power Model, 1- ZIP Model;" annotation (
    choices(choice = 0 "Constant Power", choice = 1 "ZIP Model"),
    Dialog(group = "Power flow"));
  parameter Real P_a "Active power for phase A (MW)" annotation (
    Dialog(group = "Power flow"));
  parameter Real Q_a "Reactive power for phase A (MVAr)" annotation (
    Dialog(group = "Power flow"));
  parameter Real P_b "Active power for phase B (MW)" annotation (
    Dialog(group = "Power flow"));
  parameter Real Q_b "Reactive power for phase B (MVAr)" annotation (
    Dialog(group = "Power flow"));
  parameter Real P_c "Active power for phase C (MW)" annotation (
    Dialog(group = "Power flow"));
  parameter Real Q_c "Reactive power for phase C (MVAr)" annotation (
    Dialog(group = "Power flow"));
  parameter Real VA = 1 "Guess value for phase A magnitude (pu)" annotation (
    Dialog(group = "Initialization"));
  parameter Real AngA = 0 "Guess value for phase A angle (deg)" annotation (
    Dialog(group = "Initialization"));
  parameter Real VB = 1 "Guess value for phase B magnitude (pu)" annotation (
    Dialog(group = "Initialization"));
  parameter Real AngB = -120 "Guess value for phase B angle (deg)" annotation (
    Dialog(group = "Initialization"));
  parameter Real VC = 1 "Guess value for phase C magnitude (pu)" annotation (
    Dialog(group = "Initialization"));
  parameter Real AngC = 120 "Guess value for phase C angle (deg)" annotation (
    Dialog(group = "Initialization"));
  parameter Real tstart = 0 "Starting time";
  parameter Real tend = 120 "Ending time";
  parameter Real values = 10 "Number of power values";
  parameter Real[1,3] dP = [0.25,0.25,0.25] "Delta P for Load Variation";
  parameter Real[1,3] dQ = [0.25,0.25,0.25] "Delta Q for Load Variation";
protected
  parameter Real deltaT = (tend-tstart)/values;

  // Calculating V squared
  Real Va2 = (A.vr ^ 2 + A.vi ^ 2)/(VA^2);
  Real Vb2 = (B.vr ^ 2 + B.vi ^ 2)/(VB^2);
  Real Vc2 = (C.vr ^ 2 + C.vi ^ 2)/(VC^2);

 // Calculating new values for Active and Reactive Power
  Real Pa = P_a*Va2/(Sn/3);
  Real Pb = P_b*Vb2/(Sn/3);
  Real Pc = P_c*Vc2/(Sn/3);
  Real Qa = Q_a*Va2/(Sn/3);
  Real Qb = Q_b*Vb2/(Sn/3);
  Real Qc = Q_c*Vc2/(Sn/3);

  // Calculating new values for delta Power
  Real dPa = dP[1,1]/(Sn/3);
  Real dPb = dP[1,2]/(Sn/3);
  Real dPc = dP[1,3]/(Sn/3);
  Real dQa = dQ[1,1]/(Sn/3);
  Real dQb = dQ[1,2]/(Sn/3);
  Real dQc = dQ[1,3]/(Sn/3);

  // Initializing voltages for each pin
  parameter Real var0=VA*cos(AngA*Modelica.Constants.pi/180) "Initialization";
  parameter Real vai0=VA*sin(AngA*Modelica.Constants.pi/180) "Initialization";
  parameter Real vbr0=VB*cos(AngB*Modelica.Constants.pi/180) "Initialization";
  parameter Real vbi0=VB*sin(AngB*Modelica.Constants.pi/180) "Initialization";
  parameter Real vcr0=VC*cos(AngC*Modelica.Constants.pi/180) "Initialization";
  parameter Real vci0=VC*sin(AngC*Modelica.Constants.pi/180) "Initialization";

equation
  if time >= (tstart+1*deltaT) and time <= (tstart+2*deltaT) then
    (Pa+1*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+1*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+1*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+1*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+1*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+1*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+2*deltaT) and time <=(tstart+3*deltaT) then
    (Pa+2*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+2*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+2*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+2*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+2*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+2*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+3*deltaT) and time <=(tstart+4*deltaT) then
    (Pa+3*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+3*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+3*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+3*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+3*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+3*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+4*deltaT) and time <=(tstart+5*deltaT) then
    (Pa+4*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+4*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+4*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+4*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+4*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+4*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+5*deltaT) and time <=(tstart+6*deltaT) then
    (Pa+5*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+5*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+5*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+5*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+5*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+5*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+6*deltaT) and time <=(tstart+7*deltaT) then
    (Pa+6*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+6*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+6*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+6*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+6*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+6*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+7*deltaT) and time <=(tstart+8*deltaT) then
    (Pa+7*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+7*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+7*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+7*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+7*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+7*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+8*deltaT) and time <=(tstart+9*deltaT) then
    (Pa+8*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+8*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+8*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+8*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+8*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+8*dQc) = C.vi * C.ir - C.vr * C.ii;
  elseif time >= (tstart+9*deltaT) and time <=(tstart+10*deltaT) then
    (Pa+9*dPa) = A.vr * A.ir + A.vi * A.ii;
    (Qa+9*dQa) = A.vi * A.ir - A.vr * A.ii;
    (Pb+9*dPb) = B.vr * B.ir + B.vi * B.ii;
    (Qb+9*dQb) = B.vi * B.ir - B.vr * B.ii;
    (Pc+9*dPc) = C.vr * C.ir + C.vi * C.ii;
    (Qc+9*dQc) = C.vi * C.ir - C.vr * C.ii;
  else
    Pa = A.vr * A.ir + A.vi * A.ii;
    Qa = A.vi * A.ir - A.vr * A.ii;
    Pb = B.vr * B.ir + B.vi * B.ii;
    Qb = B.vi * B.ir - B.vr * B.ii;
    Pc = C.vr * C.ir + C.vi * C.ii;
    Qc = C.vi * C.ir - C.vr * C.ii;
  end if;
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics={  Line(points = {{-100, 100}, {100, 100}, {0, -100}, {-100, 100}}, color = {28, 108, 200}), Text(lineColor = {28, 108, 200}, extent = {{-62, 90}, {66, 45}}, textString = "Grounded-Wye Load"), Text(origin = {18, 4}, lineColor = {28, 108, 200}, extent = {{-62, 45}, {28, 26}}, textString = "PQ/ZIP Load")}),
    Documentation(revisions = "<html>
<!--DISCLAIMER-->
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>"));
end Load3PhVar;
