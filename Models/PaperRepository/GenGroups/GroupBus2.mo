within PaperRepository.GenGroups;
model GroupBus2
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  //parameter Real vf0 = 2.718126892405429 "Initial field voltage";
  //parameter Real vref0 = 1.181847826013889 "Reference voltage AVR";
  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRTypeII aVR1TypeII1(Ae = 0, Be = 0,Ka = 20, Ke = 1, Kf = 0.001, Ta = 0.02, Te = 1.98, Tf = 1, Tr = 0.001, v0 = V_0, vrmax = 4.38, vrmin = 0) annotation (
    Placement(visible = true, transformation(extent = {{-62, -2}, {-12, 36}}, rotation = 0)));
  OpenIPSL.Electrical.Machines.PSAT.Order6 Syn3( D = 2, M = 2 * 6.54,                   P_0 = P_0, Q_0 = Q_0,Sn = 60, Taa = 0, T1d0 = 6.1, T1q0 = 0.3, T2q0 = 0.099, V_0 = V_0, V_b = V_b, Vn = 69, angle_0 = angle_0,                      fn = 60,                                                                          ra = 0.0031,                  xd = 1.05, x1d = 0.1850, x2d = 0.13, xq = 0.98, x1q = 0.36, x2q = 0.13,
    w(fixed=false))                                                                                                                                                                                                         annotation (
    Placement(transformation(extent = {{20, -36}, {86, 34}})));
  OpenIPSL.Interfaces.PwPin pwPin annotation (
    Placement(transformation(extent = {{122, -10}, {142, 10}}), iconTransformation(extent = {{122, -10}, {142, 10}})));
equation
  connect(aVR1TypeII1.vref0, aVR1TypeII1.vref) annotation (
    Line(points={{-37,39.8},{-38,39.8},{-38,58},{-84,58},{-84,30},{-67,30},{-67,
          28.4}},                                                                                color = {0, 0, 127}));
  connect(aVR1TypeII1.vf0, Syn3.vf0) annotation (
    Line(points={{-37,-5.8},{-38,-5.8},{-38,-14},{2,-14},{2,52},{26,52},{26,
          37.5},{26.6,37.5}},                                                                          color = {0, 0, 127}));
  connect(Syn3.p, pwPin) annotation (
    Line(points={{86,-1},{134,-1},{134,0},{132,0}},        color = {0, 0, 255}));
  connect(Syn3.v, aVR1TypeII1.v) annotation (
    Line(points={{89.3,9.5},{116,9.5},{116,-88},{-82,-88},{-82,5.6},{-67,5.6}},          color = {0, 0, 127}));
  connect(aVR1TypeII1.vf, Syn3.vf) annotation (
    Line(points={{-7,17},{-2.65,17},{-2.65,16.5},{13.4,16.5}},        color = {0, 0, 127}));
  connect(Syn3.pm0, Syn3.pm) annotation (
    Line(points={{26.6,-39.5},{26.6,-50},{2,-50},{2,-18.5},{13.4,-18.5}},          color = {0, 0, 127}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-120, -100}, {120, 100}})),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false), graphics={  Ellipse(extent = {{-72, 78}, {120, -74}}, lineColor = {28, 108, 200}), Line(points = {{0, 26}, {26, -6}, {44, 20}}, color = {28, 108, 200}), Line(points = {{-16, 2}, {0, 26}}, color = {28, 108, 200}), Text(extent = {{-6, -22}, {32, -54}}, lineColor = {28, 108, 200}, textString = "Gen2 6")}),
    Documentation(info = "<html>
<table cellspacing=\"1\" cellpadding=\"1\" border=\"1\">
<tr>
<td><p>Reference</p></td>
<td>PSAT Manual 2.1.8</td>
</tr>
<tr>
<td><p>Last update</p></td>
<td>13/07/2015</td>
</tr>
<tr>
<td><p>Author</p></td>
<td><p>MAA Murad,SmarTS Lab, KTH Royal Institute of Technology</p></td>
</tr>
<tr>
<td><p>Contact</p></td>
<td><p><a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p></td>
</tr>
</table>
<p><br><span style=\"font-family: MS Shell Dlg 2;\">&LT;OpenIPSL: iTesla Power System Library&GT;</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">Copyright 2015 RTE (France), AIA (Spain), KTH (Sweden) and DTU (Denmark)</span></p>
<ul>
<li><span style=\"font-family: MS Shell Dlg 2;\">RTE: http://www.rte-france.com/ </span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">AIA: http://www.aia.es/en/energy/</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">KTH: https://www.kth.se/en</span></li>
<li><span style=\"font-family: MS Shell Dlg 2;\">DTU:http://www.dtu.dk/english</span></li>
</ul>
<p><span style=\"font-family: MS Shell Dlg 2;\">The authors can be contacted by email: info at itesla-ipsl dot org</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">This package is part of the iTesla Power System Library (&QUOT;OpenIPSL&QUOT;) .</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The OpenIPSL is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">The OpenIPSL is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.</span></p>
<p><span style=\"font-family: MS Shell Dlg 2;\">You should have received a copy of the GNU Lesser General Public License along with the OpenIPSL. If not, see &LT;http://www.gnu.org/licenses/&GT;.</span></p>
</html>"),
  experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.01));
end GroupBus2;
