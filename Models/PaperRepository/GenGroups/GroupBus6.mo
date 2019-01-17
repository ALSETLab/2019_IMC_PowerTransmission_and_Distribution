within PaperRepository.GenGroups;
model GroupBus6
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  //parameter Real vf0 = 3.146313160164693 "Initial field voltage";
  //parameter Real vref0 = 1.228917822125829 "Reference voltage AVR";
  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRTypeII aVR4TypeII1(Ae = 0, Be = 0,Ka = 20, Ke = 1, Kf = 0.001, Ta = 0.02, Te = 0.7, Tf = 1, Tr = 0.001, v0 = V_0, vrmax = 6.81, vrmin = 1.395) annotation (
    Placement(visible = true, transformation(origin = {-7, 21}, extent = {{-23, -17}, {23, 17}}, rotation = 0)));
  OpenIPSL.Electrical.Machines.PSAT.Order6 Syn5(D = 2, M = 2 * 5.06, P_0 = P_0, Q_0 = Q_0, Sn = 25, Taa = 0, T1d0 = 4.75, T2d0 = 0.06, T1q0 = 1.5, T2q0 = 0.21, V_0 = V_0, V_b = V_b, Vn = 13.8, angle_0 = angle_0, fn = 60, ra = 0.0041, xd = 1.25, x1d = 0.232, x2d = 0.12, xq = 1.22, x1q = 0.715, x2q = 0.12)                                         annotation (
    Placement(transformation(extent = {{-23, -20}, {23, 20}}, rotation = 0, origin = {69, 2})));
  OpenIPSL.Interfaces.PwPin pwPin annotation (
    Placement(transformation(extent = {{100, -10}, {120, 10}}), iconTransformation(extent = {{100, -10}, {120, 10}})));
equation
  connect(aVR4TypeII1.vf0, Syn5.vf0) annotation (
    Line(points={{-7,0.6},{-7,0.6},{-7,-4},{28,-4},{28,38},{50,38},{50,24},{
          50.6,24}},                                                                              color = {0, 0, 127}));
  connect(aVR4TypeII1.vref0, aVR4TypeII1.vref) annotation (
    Line(points={{-7,41.4},{-8,41.4},{-8,54},{-60,54},{-60,30},{-34.6,30},{
          -34.6,31.2}},                                                                       color = {0, 0, 127}));
  connect(Syn5.v, aVR4TypeII1.v) annotation (
    Line(points={{94.3,8},{98,8},{98,-40},{-50,-40},{-50,12},{-34.6,12},{-34.6,
          10.8}},                                                                             color = {0, 0, 127}));
  connect(aVR4TypeII1.vf, Syn5.vf) annotation (
    Line(points={{20.6,21},{32,21},{32,12},{41.4,12}},      color = {0, 0, 127}));
  connect(Syn5.p, pwPin) annotation (
    Line(points={{92,2},{113.15,2},{113.15,0},{110,0}},                        color = {0, 0, 255}));
  connect(Syn5.pm0, Syn5.pm) annotation (
    Line(points={{50.6,-20},{50.6,-26},{28,-26},{28,-8},{41.4,-8}},          color = {0, 0, 127}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}})),
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics={  Ellipse(extent = {{-92, 78}, {100, -74}}, lineColor = {28, 108, 200}), Line(points = {{-20, 26}, {6, -6}, {24, 20}}, color = {28, 108, 200}), Line(points = {{-36, 2}, {-20, 26}}, color = {28, 108, 200}), Text(extent = {{-24, -22}, {14, -54}}, lineColor = {28, 108, 200}, textString = "Gen4 6")}),
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
</html>"));
end GroupBus6;
