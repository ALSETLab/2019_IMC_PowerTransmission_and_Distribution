within PaperRepository.Systems;
model IEEE14_SinglePh_B11
  extends Modelica.Icons.Example;
  parameter Real lambda = 1.4;
  import Modelica.Constants.pi;
  OpenIPSL.Electrical.Buses.Bus B1 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-135, -31})));
  OpenIPSL.Electrical.Buses.Bus B2 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-60, -128})));
  OpenIPSL.Electrical.Buses.Bus B3 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {44, -122})));
  OpenIPSL.Electrical.Buses.Bus B4 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {32, -32})));
  OpenIPSL.Electrical.Buses.Bus B5 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-24, -40})));
  OpenIPSL.Electrical.Buses.Bus B6 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-47, 19})));
  OpenIPSL.Electrical.Buses.Bus B7 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {91, 1})));
  OpenIPSL.Electrical.Buses.Bus B8 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 180, origin = {149, -37})));
  OpenIPSL.Electrical.Buses.Bus B9 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {86, 44})));
  OpenIPSL.Electrical.Buses.Bus B10 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {16, 110})));
  OpenIPSL.Electrical.Buses.Bus B11 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {16, 40})));
  OpenIPSL.Electrical.Buses.Bus B12 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-128, 68})));
  OpenIPSL.Electrical.Buses.Bus B13 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {-64, 110})));
  OpenIPSL.Electrical.Buses.Bus B14 annotation(
    Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin = {104, 108})));
  OpenIPSL.Electrical.Branches.PwLine L1(B = 0.0340 / 2, G = 0, R = 0.05695, X = 0.17388) annotation(
    Placement(transformation(extent = {{-8.99999, -5.99999}, {8.99999, 6.00002}}, rotation = 90, origin = {-60, -77})));
  OpenIPSL.Electrical.Branches.PwLine L7(G = 0, R = 0.05403, X = 0.22304, B = 0.0492 / 2) annotation(
    Placement(transformation(extent = {{-10, -6.99999}, {10, 6.99999}}, rotation = 0, origin = {-84, -53})));
  OpenIPSL.Electrical.Branches.PwLine L3(G = 0, R = 0.01938, X = 0.05917, B = 0.0528 / 2) annotation(
    Placement(transformation(extent = {{-10, -6.99995}, {10, 6.99998}}, rotation = 270, origin = {-135, -96})));
  OpenIPSL.Electrical.Branches.PwLine L6(B = 0.0346 / 2, G = 0, R = 0.06701, X = 0.17103) annotation(
    Placement(transformation(extent = {{-8.99998, -6}, {8.99999, 5.99996}}, rotation = 90, origin = {44, -65})));
  OpenIPSL.Electrical.Branches.PwLine L8(B = 0.0128 / 2, G = 0, R = 0.01335, X = 0.04211) annotation(
    Placement(transformation(extent = {{-10, -6.99999}, {10, 6.99999}}, rotation = 0, origin = {2, -53})));
  OpenIPSL.Electrical.Branches.PwLine L13(G = 0, R = 0.09498, X = 0.1989, B = 0) annotation(
    Placement(visible = true, transformation(origin = {-2, 30}, extent = {{-10, -6.00002}, {10, 6.00001}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PwLine L10(G = 0, R = 0.12291, X = 0.25581, B = 0) annotation(
    Placement(transformation(extent = {{-8.99999, -6}, {9.00002, 5.99999}}, rotation = 90, origin = {-128, 47})));
  OpenIPSL.Electrical.Branches.PwLine L12(G = 0, R = 0.06615, X = 0.13027, B = 0) annotation(
    Placement(transformation(extent = {{-9.00001, -6.00001}, {9.00001, 6.00001}}, rotation = 90, origin = {-64, 63})));
  OpenIPSL.Electrical.Branches.PwLine L14(G = 0, B = 0, R = 0.08205, X = 0.19207) annotation(
    Placement(transformation(extent = {{-8.5, -6}, {8.5, 6}}, rotation = 90, origin = {16, 66.5})));
  OpenIPSL.Electrical.Branches.PwLine L15(G = 0, B = 0, R = 0.03181, X = 0.0845) annotation(
    Placement(transformation(extent = {{-8.99999, -6}, {8.99999, 5.99998}}, rotation = 90, origin = {52, 69})));
  OpenIPSL.Electrical.Branches.PwLine L16(G = 0, B = 0, R = 0.12711, X = 0.27038) annotation(
    Placement(transformation(extent = {{-9.5, -6.0002}, {9.49997, 6.00018}}, rotation = 90, origin = {104, 75.5})));
  OpenIPSL.Electrical.Branches.PwLine L17(G = 0, B = 0, R = 0.17093, X = 0.34802) annotation(
    Placement(transformation(extent = {{-9.5, -6.00021}, {9.5, 6.00022}}, rotation = 180, origin = {44.5, 97.9998})));
  OpenIPSL.Electrical.Branches.PwLine L5(G = 0, R = 0.04699, X = 0.19797, B = 0.0438 / 2) annotation(
    Placement(transformation(extent = {{-8.99998, -5.99999}, {8.99998, 5.99999}}, rotation = 180, origin = {13, -108})));
  OpenIPSL.Electrical.Branches.PwLine L11(G = 0, B = 0, R = 0.22092, X = 0.19988) annotation(
    Placement(transformation(extent = {{-8.99999, -5.99999}, {8.99999, 5.99999}}, rotation = 90, origin = {-88, 79})));
  OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio(R = 0, X = 0.25202, fn = 60, m = 0.932) annotation(
    Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 90, origin = {-18, -6})));
  OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio1(R = 0, X = 0.55618, fn = 60, m = 0.969) annotation(
    Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 90, origin = {44, 16})));
  OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio2(R = 0, X = 0.20912, fn = 60, m = 0.978) annotation(
    Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 0, origin = {64, -18})));
  OpenIPSL.Electrical.Branches.PwLine pwLinewithOpeningSending(B = 0.0374 / 2, G = 0, R = 0.05811, X = 0.17632) annotation(
    Placement(visible = true, transformation(extent = {{4, -82}, {22, -69}}, rotation = 0)));
  inner OpenIPSL.Electrical.SystemBase SysData(S_b = 100, fn = 60) annotation(
    Placement(visible = true, transformation(extent = {{-192, 256}, {-126, 284}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load12(P_0 = lambda * 6.1, Q_0 = lambda * 1.6, V_0 = 0.932247, angle_0 = -24.1211) annotation(
    Placement(visible = true, transformation(origin = {-128, 94}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load13(P_0 = lambda * 13.5, Q_0 = lambda * 5.8, V_0 = 0.922784, angle_0 = -24.2174) annotation(
    Placement(visible = true, transformation(origin = {-64, 138}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load10(P_0 = lambda * 9, Q_0 = lambda * 5.8, V_0 = 0.907992, angle_0 = -23.8494) annotation(
    Placement(visible = true, transformation(origin = {16, 142}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load14(P_0 = lambda * 14.9, Q_0 = lambda * 5.0, V_0 = 0.887120, angle_0 = -25.6849) annotation(
    Placement(visible = true, transformation(origin = {104, 140}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load9(P_0 = lambda * 29.5, Q_0 = lambda * 16.6, V_0 = 0.912078, angle_0 = -23.4936) annotation(
    Placement(visible = true, transformation(origin = {86, 78}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load6(P_0 = lambda * 11.2, Q_0 = lambda * 7.5, V_0 = 0.957775, angle_0 = -22.6101) annotation(
    Placement(visible = true, transformation(origin = {-46, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load5(P_0 = lambda * 7.6, Q_0 = lambda * 1.6, V_0 = 0.938840, angle_0 = -13.0366) annotation(
    Placement(visible = true, transformation(origin = {-24, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load4(P_0 = lambda * 47.8, Q_0 = lambda * 4.0, V_0 = 0.926804, angle_0 = -15.4206) annotation(
    Placement(visible = true, transformation(origin = {64, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load3(P_0 = lambda * 94.2, Q_0 = lambda * 19, V_0 = 0.927778, angle_0 = -19.7456) annotation(
    Placement(visible = true, transformation(origin = {84, -106}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load2(P_0 = lambda * 21.7, Q_0 = lambda * 12.7, V_0 = 0.996776, angle_0 = -7.3598) annotation(
    Placement(visible = true, transformation(origin = {-90, -110}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio3(R = 0, X = 0.11001, fn = 60, m = 1) annotation(
    Placement(visible = true, transformation(origin = {90, 20}, extent = {{-14, -14}, {14, 14}}, rotation = 90)));
  OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio4(R = 0, X = 0.17615, fn = 60, m = 1) annotation(
    Placement(visible = true, transformation(origin = {120, -38}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  PaperRepository.GenGroups.GroupBus2 GenBus2(P_0 = 40.00, Q_0 = 50.00, V_0 = 0.996776, V_b = 69, angle_0 = -7.3598) annotation(
    Placement(visible = true, transformation(origin = {-86, -156}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PaperRepository.GenGroups.GroupBus3 GenBus3(P_0 = 0.00, Q_0 = 40.00, V_0 = 0.927778, V_b = 69, angle_0 = -19.7456) annotation(
    Placement(visible = true, transformation(origin = {22, -140}, extent = {{-10, -10}, {12, 10}}, rotation = 0)));
  PaperRepository.GenGroups.GroupBus6 GenBus6(P_0 = 0.00, Q_0 = 24.00, V_0 = 0.957775, V_b = 13.8, angle_0 = -22.6101) annotation(
    Placement(visible = true, transformation(origin = {-76, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PaperRepository.GenGroups.GroupBus8 GenBus8(P_0 = 0, Q_0 = 24.00, V_0 = 0.982861, V_b = 18, angle_0 = -20.6423) annotation(
    Placement(visible = true, transformation(origin = {184, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  PaperRepository.GenGroups.GroupBus1 GenBus1(P_0 = 355.3125, Q_0 = 84.4058, V_0 = 1.06, V_b = 69, angle_0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-156, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PaperRepository.Loads.LoadVar Load11(P_0 = lambda * 3.5, Q_0 = lambda * 1.8, V_0 = 0.892453, angle_0 = -25.6206, dP = 0.49, dQ = 0.252) annotation(
    Placement(visible = true, transformation(origin = {276, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  OpenIPSL.Electrical.Branches.PwLine R650_632(B = 0, G = 0, R = 0.22092, X = 0.19988) annotation(
    Placement(visible = true, transformation(origin = {212, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus B632 annotation(
    Placement(visible = true, transformation(origin = {242, 22}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  OpenIPSL.Electrical.Buses.Bus B650 annotation(
    Placement(visible = true, transformation(origin = {184, 22}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  OpenIPSL.Electrical.Branches.PSAT.TwoWindingTransformer twoWindingTransformer1(x = 0.55618, r = 0.00) annotation(
    Placement(visible = true, transformation(origin = {150, 20}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
equation
  connect(twoWindingTransformer1.n, B650.p) annotation(
    Line(points = {{165.4, 20}, {186, 20}, {186, 22}, {184, 22}}, color = {0, 0, 255}));
  connect(B11.p, twoWindingTransformer1.p) annotation(
    Line(points = {{16, 40}, {16, 40}, {16, 20}, {134.6, 20}, {134.6, 20}}, color = {0, 0, 255}));
  connect(B650.p, R650_632.p) annotation(
    Line(points = {{184, 22}, {197, 22}, {197, 22}, {202, 22}, {202, 22}, {203, 22}, {203, 22}, {203, 22}}, color = {0, 0, 255}));
  connect(R650_632.n, B632.p) annotation(
    Line(points = {{221, 22}, {241, 22}, {241, 22}, {241, 22}, {241, 22}, {242, 22}}, color = {0, 0, 255}));
  connect(B632.p, Load11.p) annotation(
    Line(points = {{242, 22}, {254, 22}, {254, 22}, {266, 22}, {266, 22}, {270, 22}, {270, 22}, {266, 22}}, color = {0, 0, 255}));
  connect(B4.p, pwLinewithOpeningSending.n) annotation(
    Line(points = {{32, -32}, {32, -76}, {21.1, -76}, {21.1, -75.5}}, color = {0, 0, 255}));
  connect(B2.p, pwLinewithOpeningSending.p) annotation(
    Line(points = {{-60, -128}, {-60, -106}, {-14, -106}, {-14, -76}, {4.9, -76}, {4.9, -75.5}}, color = {0, 0, 255}));
  connect(GenBus1.pwPin, B1.p) annotation(
    Line(points = {{-145, -6.2}, {-136, -6.2}, {-136, -31}, {-135, -31}}, color = {0, 0, 255}));
  connect(B8.p, GenBus8.pwPin) annotation(
    Line(points = {{149, -37}, {174, -37}, {174, -37.8}, {172.8, -37.8}}, color = {0, 0, 255}));
  connect(GenBus6.pwPin, B6.p) annotation(
    Line(points = {{-65, 2}, {-46, 2}, {-46, 19}, {-47, 19}}, color = {0, 0, 255}));
  connect(GenBus2.pwPin, B2.p) annotation(
    Line(points = {{-72.8, -156}, {-60, -156}, {-60, -128}}, color = {0, 0, 255}));
  connect(GenBus3.pwPin, B3.p) annotation(
    Line(points = {{35, -140.2}, {44, -140.2}, {44, -122}}, color = {0, 0, 255}));
  connect(L13.n, B11.p) annotation(
    Line(points = {{7, 30}, {16, 30}, {16, 40}}, color = {0, 0, 255}));
  connect(B6.p, L13.p) annotation(
    Line(points = {{-47, 19}, {-47, 30}, {-11, 30}}, color = {0, 0, 255}));
  connect(tWTransformerWithFixedTapRatio4.p, B7.p) annotation(
    Line(points = {{104.6, -38}, {92, -38}, {92, 1}, {91, 1}}, color = {0, 0, 255}));
  connect(tWTransformerWithFixedTapRatio4.n, B8.p) annotation(
    Line(points = {{135.4, -38}, {150, -38}, {150, -37}, {149, -37}}, color = {0, 0, 255}));
  connect(B9.p, tWTransformerWithFixedTapRatio3.n) annotation(
    Line(points = {{86, 44}, {90, 44}, {90, 35.4}, {90, 35.4}}, color = {0, 0, 255}));
  connect(B7.p, tWTransformerWithFixedTapRatio3.p) annotation(
    Line(points = {{91, 1}, {90, 1}, {90, 4.6}, {90, 4.6}}, color = {0, 0, 255}));
  connect(B2.p, Load2.p) annotation(
    Line(points = {{-60, -128}, {-90, -128}, {-90, -120}, {-90, -120}}, color = {0, 0, 255}));
  connect(B3.p, Load3.p) annotation(
    Line(points = {{44, -122}, {84, -122}, {84, -116}, {84, -116}}, color = {0, 0, 255}));
  connect(B4.p, Load4.p) annotation(
    Line(points = {{32, -32}, {64, -32}, {64, -46}, {64, -46}}, color = {0, 0, 255}));
  connect(B5.p, Load5.p) annotation(
    Line(points = {{-24, -40}, {-24, -40}, {-24, -70}, {-24, -70}}, color = {0, 0, 255}));
  connect(B6.p, Load6.p) annotation(
    Line(points = {{-47, 19}, {-47, 19}, {-47, -10}, {-46, -10}}, color = {0, 0, 255}));
  connect(B9.p, Load9.p) annotation(
    Line(points = {{86, 44}, {86, 44}, {86, 68}, {86, 68}}, color = {0, 0, 255}));
  connect(B14.p, Load14.p) annotation(
    Line(points = {{104, 108}, {104, 108}, {104, 130}, {104, 130}}, color = {0, 0, 255}));
  connect(B10.p, Load10.p) annotation(
    Line(points = {{16, 110}, {16, 110}, {16, 132}, {16, 132}}, color = {0, 0, 255}));
  connect(Load13.p, B13.p) annotation(
    Line(points = {{-64, 128}, {-64, 128}, {-64, 110}, {-64, 110}}, color = {0, 0, 255}));
  connect(B12.p, Load12.p) annotation(
    Line(points = {{-128, 68}, {-128, 68}, {-128, 84}, {-128, 84}}, color = {0, 0, 255}));
  connect(B12.p, L11.p) annotation(
    Line(points = {{-128, 68}, {-128, 62}, {-96, 62}, {-88, 62}, {-88, 70.9}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(L10.p, B6.p) annotation(
    Line(points = {{-128, 38.9}, {-128, 36}, {-128, 36}, {-128, 28}, {-47, 28}, {-47, 19}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B3.p, L6.p) annotation(
    Line(points = {{44, -122}, {44, -98}, {44, -73.1}, {44, -73.1}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B1.p, L3.p) annotation(
    Line(points = {{-135, -31}, {-135, -58}, {-135, -87}, {-135, -87}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B4.p, L6.n) annotation(
    Line(points = {{32, -32}, {32, -42}, {44, -42}, {44, -56.9}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B4.p, L8.n) annotation(
    Line(points = {{32, -32}, {32, -42}, {18, -42}, {18, -53}, {11, -53}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B10.p, L15.n) annotation(
    Line(points = {{16, 110}, {16, 84}, {52, 84}, {52, 77.1}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B10.p, L14.n) annotation(
    Line(points = {{16, 110}, {16, 74.15}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(B13.p, L12.n) annotation(
    Line(points = {{-64, 110}, {-64, 71.1}}, color = {0, 0, 255}, smooth = Smooth.None));
  connect(L16.n, B14.p) annotation(
    Line(points = {{104, 84.05}, {104, 88.05}, {104, 108}}, color = {0, 0, 255}));
  connect(B11.p, L14.p) annotation(
    Line(points = {{16, 40}, {16, 58.85}, {16, 58.85}}, color = {0, 0, 255}));
  connect(B6.p, L12.p) annotation(
    Line(points = {{-47, 19}, {-47, 40.5}, {-64, 40.5}, {-64, 54.9}}, color = {0, 0, 255}));
  connect(B13.p, L11.n) annotation(
    Line(points = {{-64, 110}, {-64, 98}, {-88, 98}, {-88, 87.1}}, color = {0, 0, 255}));
  connect(L10.n, B12.p) annotation(
    Line(points = {{-128, 55.1}, {-128, 55.1}, {-128, 68}}, color = {0, 0, 255}));
  connect(B3.p, L5.p) annotation(
    Line(points = {{44, -122}, {44, -108}, {21.1, -108}}, color = {0, 0, 255}));
  connect(B2.p, L1.p) annotation(
    Line(points = {{-60, -128}, {-60, -108}, {-60, -85.1}, {-60, -85.1}}, color = {0, 0, 255}));
  connect(L1.n, B5.p) annotation(
    Line(points = {{-60, -68.9}, {-60, -59.8}, {-24, -59.8}, {-24, -40}}, color = {0, 0, 255}));
  connect(B1.p, L7.p) annotation(
    Line(points = {{-135, -31}, {-135, -53}, {-93, -53}}, color = {0, 0, 255}));
  connect(B5.p, L7.n) annotation(
    Line(points = {{-24, -40}, {-24, -53}, {-75, -53}}, color = {0, 0, 255}));
  connect(B4.p, tWTransformerWithFixedTapRatio1.p) annotation(
    Line(points = {{32, -32}, {32, -32}, {32, -4}, {32, 0.6}, {44, 0.6}}, color = {0, 0, 255}));
  connect(B5.p, tWTransformerWithFixedTapRatio.p) annotation(
    Line(points = {{-24, -40}, {-22, -40}, {-22, -21.4}, {-18, -21.4}}, color = {0, 0, 255}));
  connect(B6.p, tWTransformerWithFixedTapRatio.n) annotation(
    Line(points = {{-47, 19}, {-47, 12}, {-18, 12}, {-18, 9.4}}, color = {0, 0, 255}));
  connect(B4.p, tWTransformerWithFixedTapRatio2.p) annotation(
    Line(points = {{32, -32}, {36, -32}, {36, -18}, {48.6, -18}}, color = {0, 0, 255}));
  connect(B7.p, tWTransformerWithFixedTapRatio2.n) annotation(
    Line(points = {{91, 1}, {91, -8.5}, {79.4, -8.5}, {79.4, -18}}, color = {0, 0, 255}));
  connect(B9.p, tWTransformerWithFixedTapRatio1.n) annotation(
    Line(points = {{86, 44}, {86, 44}, {86, 36}, {86, 34}, {44, 34}, {44, 31.4}}, color = {0, 0, 255}));
  connect(B5.p, L8.p) annotation(
    Line(points = {{-24, -40}, {-24, -40}, {-14, -40}, {-14, -53}, {-7, -53}}, color = {0, 0, 255}));
  connect(L15.p, B9.p) annotation(
    Line(points = {{52, 60.9}, {86, 60.9}, {86, 44}}, color = {0, 0, 255}));
  connect(B9.p, L16.p) annotation(
    Line(points = {{86, 44}, {86, 44}, {86, 56}, {96, 56}, {104, 56}, {104, 66.95}}, color = {0, 0, 255}));
  connect(B14.p, L17.p) annotation(
    Line(points = {{104, 108}, {104, 118}, {74, 118}, {74, 97.9998}, {53.05, 97.9998}}, color = {0, 0, 255}));
  connect(B13.p, L17.n) annotation(
    Line(points = {{-64, 110}, {-64, 97.9998}, {35.95, 97.9998}}, color = {0, 0, 255}));
  connect(L5.n, B2.p) annotation(
    Line(points = {{4.90002, -108}, {-6, -108}, {-6, -134}, {-60, -134}, {-60, -128}}, color = {0, 0, 255}));
  connect(L3.n, B2.p) annotation(
    Line(points = {{-135, -105}, {-135, -134}, {-60, -134}, {-60, -128}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-200, -180}, {650, 300}})),
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false)),
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
    experiment(StopTime = 120, Interval = 0.005, Tolerance = 1e-5, StartTime = 0),
    __Dymola_experimentSetupOutput,
    __OpenModelica_commandLineOptions = "");
end IEEE14_SinglePh_B11;