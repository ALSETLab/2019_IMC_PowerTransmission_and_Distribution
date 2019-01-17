within PaperRepository.GenGroups;
model GroupBus1
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  //parameter Real vf0=1.122656195484139 "Initial field voltage";
  //parameter Real vref0=1.065622531687790 "Reference voltage AVR";
  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRTypeII AVR1(Ae = 0, Be = 0,Ka = 200, Ke = 1, Kf = 0.0012, Ta = 0.02, Te = 0.19, Tf = 1, Tr = 0.001, v0 = V_0, vrmax = 7.32, vrmin = 0) annotation (
    Placement(visible = true, transformation(extent = {{-50, -14}, {2, 34}}, rotation = 0)));
  OpenIPSL.Interfaces.PwPin pwPin annotation (
    Placement(transformation(extent = {{100, -12}, {120, 8}}), iconTransformation(extent = {{100, -12}, {120, 8}})));
  OpenIPSL.Electrical.Machines.PSAT.Order6 Syn1V( D = 2, M = 2 * 5.148,                  P_0 = P_0, Q_0 = Q_0,Sn = 615, Taa = 0, T1d0 = 7.4, T2d0 = 0.03, T1q0 = 1E-4, T2q0 = 0.033, V_0 = V_0, V_b = V_b, Vn = 69, angle_0 = angle_0,                                            fn = 60,                                                                          ra = 0,                  xd = 0.8979, x1d = 0.2995, x2d = 0.23, xq = 0.646, x1q = 0.646, x2q = 0.4,
    delta(fixed=false),
    pm0(fixed=false),
    iq(fixed=false))                                                                                                                                                                                                        annotation (
    Placement(visible = true, transformation(origin = {62, 1.77636e-15}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
equation
  connect(AVR1.vref0, AVR1.vref) annotation (
    Line(points={{-24,38.8},{-24,38.8},{-24,60},{-80,60},{-80,26},{-55.2,26},{
          -55.2,24.4}},                                                                          color = {0, 0, 127}));
  connect(Syn1V.v, AVR1.v) annotation (
    Line(points={{86.2,6.6},{94,6.6},{94,-44},{-80,-44},{-80,-2},{-55.2,-2},{
          -55.2,-4.4}},                                                                       color = {0, 0, 127}));
  connect(AVR1.vf0, Syn1V.vf0) annotation (
    Line(points={{-24,-18.8},{20,-18.8},{20,40},{44,40},{44,24.2},{44.4,24.2}},    color = {0, 0, 127}));
  connect(AVR1.vf, Syn1V.vf) annotation (
    Line(points={{7.2,10},{34,10},{34,11},{35.6,11}},      color = {0, 0, 127}));
  connect(Syn1V.pm0, Syn1V.pm) annotation (
    Line(points={{44.4,-24.2},{44.4,-24.2},{44.4,-30},{24,-30},{24,-12},{35.6,
          -12},{35.6,-11}},                                                                      color = {0, 0, 127}));
  connect(Syn1V.p, pwPin) annotation (
    Line(points = {{84, 0}, {108, 0}, {108, -2}, {110, -2}}, color = {0, 0, 255}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics={  Polygon(points = {{-22, 20}, {-22, 20}})}),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false), graphics={  Text(extent = {{-93, 6}, {-24, -12}}, lineColor = {0, 0, 255}, textStyle = {TextStyle.Italic}, textString = ""), Ellipse(extent = {{-94, 68}, {98, -84}}, lineColor = {28, 108, 200}), Line(points = {{-28, -8}, {-12, 16}}, color = {28, 108, 200}), Line(points = {{-12, 16}, {14, -16}, {32, 10}}, color = {28, 108, 200}), Text(extent = {{-18, -32}, {20, -64}}, lineColor = {28, 108, 200}, textString = "Gen1 5.2")}),
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
end GroupBus1;
