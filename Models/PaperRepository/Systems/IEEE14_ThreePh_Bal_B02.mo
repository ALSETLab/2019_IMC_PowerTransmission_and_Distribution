within PaperRepository.Systems;
model IEEE14_ThreePh_Bal_B02
  extends Modelica.Icons.Example;
    parameter Real lambda = 1.4;
    import Modelica.Constants.pi;
    OpenIPSL.Electrical.Buses.Bus B1 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-129,69})));
    OpenIPSL.Electrical.Buses.Bus B2 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-54,-28})));
    OpenIPSL.Electrical.Buses.Bus B3 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={50,-22})));
    OpenIPSL.Electrical.Buses.Bus B4 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={38,68})));
    OpenIPSL.Electrical.Buses.Bus B5 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-18,60})));
    OpenIPSL.Electrical.Buses.Bus B6 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-41,119})));
    OpenIPSL.Electrical.Buses.Bus B7 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={97,101})));
    OpenIPSL.Electrical.Buses.Bus B8 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 180, origin={155,63})));
    OpenIPSL.Electrical.Buses.Bus B9 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={92,144})));
    OpenIPSL.Electrical.Buses.Bus B10 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={22,210})));
    OpenIPSL.Electrical.Buses.Bus B11 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={22,140})));
    OpenIPSL.Electrical.Buses.Bus B12 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-122,168})));
    OpenIPSL.Electrical.Buses.Bus B13 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={-58,210})));
    OpenIPSL.Electrical.Buses.Bus B14 annotation (
      Placement(transformation(extent = {{-15, -15}, {15, 15}}, rotation = 90, origin={110,208})));
    OpenIPSL.Electrical.Branches.PwLine L1(B = 0.0340/2, G = 0, R = 0.05695, X = 0.17388) annotation (
      Placement(transformation(extent = {{-8.99999, -5.99999}, {8.99999, 6.00002}}, rotation = 90, origin={-54,23})));
    OpenIPSL.Electrical.Branches.PwLine L7(G = 0, R = 0.05403, X = 0.22304, B = 0.0492 / 2) annotation (
      Placement(transformation(extent = {{-10, -6.99999}, {10, 6.99999}}, rotation = 0, origin={-78,47})));
    OpenIPSL.Electrical.Branches.PwLine L3(G = 0, R = 0.01938, X = 0.05917, B = 0.0528 / 2) annotation (
      Placement(transformation(extent = {{-10, -6.99995}, {10, 6.99998}}, rotation = 270, origin={-129,4})));
    OpenIPSL.Electrical.Branches.PwLine L6(B = 0.0346/2, G = 0, R = 0.06701, X = 0.17103) annotation (
      Placement(transformation(extent = {{-8.99998, -6}, {8.99999, 5.99996}}, rotation = 90, origin={50,35})));
    OpenIPSL.Electrical.Branches.PwLine L8(B = 0.0128/2, G = 0, R = 0.01335, X = 0.04211) annotation (
      Placement(transformation(extent = {{-10, -6.99999}, {10, 6.99999}}, rotation = 0, origin={8,47})));
    OpenIPSL.Electrical.Branches.PwLine L13(G = 0, R = 0.09498, X = 0.1989, B = 0) annotation (
      Placement(visible = true, transformation(origin={4,130},    extent = {{-10, -6.00002}, {10, 6.00001}}, rotation = 0)));
    OpenIPSL.Electrical.Branches.PwLine L10(G = 0, R = 0.12291, X = 0.25581, B = 0) annotation (
      Placement(transformation(extent = {{-8.99999, -6}, {9.00002, 5.99999}}, rotation = 90, origin={-122,147})));
    OpenIPSL.Electrical.Branches.PwLine L12(G = 0, R = 0.06615, X = 0.13027, B = 0) annotation (
      Placement(transformation(extent = {{-9.00001, -6.00001}, {9.00001, 6.00001}}, rotation = 90, origin={-58,163})));
    OpenIPSL.Electrical.Branches.PwLine L14(G = 0, B = 0, R = 0.08205, X = 0.19207) annotation (
      Placement(transformation(extent = {{-8.5, -6}, {8.5, 6}}, rotation = 90, origin={22,166.5})));
    OpenIPSL.Electrical.Branches.PwLine L15(G = 0, B = 0, R = 0.03181, X = 0.0845) annotation (
      Placement(transformation(extent = {{-8.99999, -6}, {8.99999, 5.99998}}, rotation = 90, origin={58,169})));
    OpenIPSL.Electrical.Branches.PwLine L16(G = 0, B = 0, R = 0.12711, X = 0.27038) annotation (
      Placement(transformation(extent = {{-9.5, -6.0002}, {9.49997, 6.00018}}, rotation = 90, origin={110,
            175.5})));
    OpenIPSL.Electrical.Branches.PwLine L17(G = 0, B = 0, R = 0.17093, X = 0.34802) annotation (
      Placement(transformation(extent = {{-9.5, -6.00021}, {9.5, 6.00022}}, rotation = 180, origin={50.5,198})));
    OpenIPSL.Electrical.Branches.PwLine L5(G = 0, R = 0.04699, X = 0.19797, B = 0.0438 / 2) annotation (
      Placement(transformation(extent = {{-8.99998, -5.99999}, {8.99998, 5.99999}}, rotation = 180, origin={19,-8})));
    OpenIPSL.Electrical.Branches.PwLine L11(G = 0, B = 0, R = 0.22092, X = 0.19988) annotation (
      Placement(transformation(extent = {{-8.99999, -5.99999}, {8.99999, 5.99999}}, rotation = 90, origin={-82,179})));
    OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio(R = 0, X = 0.25202, fn = 60, m = 0.932) annotation (
      Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 90, origin={-12,94})));
    OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio1(R = 0, X = 0.55618, fn = 60, m = 0.969) annotation (
      Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 90, origin={50,116})));
    OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio2(R = 0, X = 0.20912, fn = 60, m = 0.978) annotation (
      Placement(transformation(extent = {{-14, -14}, {14, 14}}, rotation = 0, origin={70,82})));
    OpenIPSL.Electrical.Branches.PwLine pwLinewithOpeningSending(B = 0.0374/2, G = 0, R = 0.05811, X = 0.17632) annotation (
      Placement(visible = true, transformation(extent={{10,18},{28,31}},        rotation = 0)));
    inner OpenIPSL.Electrical.SystemBase SysData(S_b = 100, fn = 60) annotation (
      Placement(visible = true, transformation(extent = {{-192, 256}, {-126, 284}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load12(P_0 = lambda*6.1, Q_0 = lambda*1.6, V_0 = 0.931786, angle_0 = -24.1384)  annotation (
      Placement(visible = true, transformation(origin={-122,194},   extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load13(P_0 = lambda*13.5, Q_0 = lambda*5.8, V_0 = 0.922310, angle_0 = -24.2348) annotation (
      Placement(visible = true, transformation(origin={-58,238},    extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load10(P_0 = lambda*9, Q_0 = lambda*5.8, V_0 = 0.907574, angle_0 = -23.8681) annotation (
      Placement(visible = true, transformation(origin={22,242},    extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load14(P_0 = lambda*14.9, Q_0 = lambda*5.0, V_0 = 0.886581, angle_0 = -25.7048) annotation (
      Placement(visible = true, transformation(origin={110,240},    extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load9(P_0 = lambda*29.5, Q_0 = lambda*16.6, V_0 = 0.911522, angle_0 = -23.5114) annotation (
      Placement(visible = true, transformation(origin={92,178},   extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load6(P_0 = lambda*11.2, Q_0 = lambda*7.5, V_0 = 0.957334, angle_0 = -22.6258) annotation (
      Placement(visible = true, transformation(origin={-40,80},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load5(P_0 = lambda*7.6, Q_0 = lambda*1.6, V_0 = 0.938097, angle_0 = -13.0454) annotation (
      Placement(visible = true, transformation(origin={-18,20},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load4(P_0 = lambda*47.8, Q_0 = lambda*4.0, V_0 = 0.925972, angle_0 = -15.4284) annotation (
      Placement(visible = true, transformation(origin={70,44},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load3(P_0 = lambda*94.2, Q_0 = lambda*19, V_0 = 0.926726, angle_0 = -19.7666) annotation (
      Placement(visible = true, transformation(origin={90,-6},      extent = {{-10, 10}, {10, -10}}, rotation = 0)));
    OpenIPSL.Electrical.Loads.PSAT.VoltDependant Load11(P_0 = lambda*3.5, Q_0 = lambda*1.8, V_0 = 0.926517, angle_0 = -23.4593) annotation (
      Placement(visible = true, transformation(origin={22,110},      extent={{-10,-10},
            {10,10}},                                                                                 rotation = 0)));
    OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio3(R = 0, X = 0.11001, fn = 60, m = 1) annotation (
      Placement(visible = true, transformation(origin={96,120},   extent = {{-14, -14}, {14, 14}}, rotation = 90)));
    OpenIPSL.Electrical.Branches.PSAT.TWTransformerWithFixedTapRatio tWTransformerWithFixedTapRatio4(R = 0, X = 0.17615, fn = 60, m = 1) annotation (
      Placement(visible = true, transformation(origin={126,62},     extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    PaperRepository.GenGroups.GroupBus2 GenBus2(P_0 = 40.00, Q_0 = 50.00, V_0 = 0.995626, V_b = 69, angle_0 = -7.3537) annotation (
      Placement(visible = true, transformation(origin={-80,-56},     extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PaperRepository.GenGroups.GroupBus3 GenBus3(P_0 = 0.00, Q_0 = 40.00, V_0 = 0.926726, V_b = 69, angle_0 = -19.7666) annotation (
      Placement(visible = true, transformation(origin={28,-40},     extent = {{-10, -10}, {12, 10}}, rotation = 0)));
    PaperRepository.GenGroups.GroupBus6 GenBus6(P_0 = 0.00, Q_0 = 24.00, V_0 = 0.957334, V_b = 13.8, angle_0 = -22.6258) annotation (
      Placement(visible = true, transformation(origin={-70,102},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PaperRepository.GenGroups.GroupBus8 GenBus8(P_0 = 0, Q_0 = 24.00, V_0 = 0.982241, V_b = 18, angle_0 = -20.6588) annotation (
      Placement(visible = true, transformation(origin={190,62},     extent = {{10, -10}, {-10, 10}}, rotation = 0)));
    PaperRepository.GenGroups.GroupBus1 GenBus1(P_0 = 355.5716, Q_0 = 86.7046, V_0 = 1.06, V_b = 69, angle_0 = 0) annotation (
      Placement(visible = true, transformation(origin={-150,94},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ThreePhase.Branches.MonoTri.Transformer_MT Substation(
      Connection=3,
      R=0.00,
    X=0.11001)                                                                               annotation (
      Placement(visible = true, transformation(origin={-12,-74},   extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ThreePhase.Buses.Bus_3Ph Bus650 annotation (
      Placement(visible = true, transformation(origin={16,-74},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ThreePhase.Branches.Lines.Line_3Ph R650_632(
      Gseraa=4.4437,
      Bseraa=-13.5672,
      Gserab=-0.5555,
      Bserab=1.6959,
      Gserac=-0.5555,
      Bserac=1.6959,
      Gserbb=4.4437,
      Bserbb=-13.5672,
      Gserbc=-0.5555,
      Bserbc=1.6959,
      Gsercc=4.4437,
      Bsercc=-13.5672)                                                                                                                                                                                                       annotation (
      Placement(visible = true, transformation(origin={54,-74},    extent = {{-14, -10}, {14, 10}}, rotation = 0)));
    ThreePhase.Buses.Bus_3Ph Bus632 annotation (
      Placement(visible = true, transformation(origin={94,-74},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Loads.Load3PhVar Load2(
      AngA=-3.45267,
      AngB=-123.453,
      AngC=116.547,
      VA=0.956771,
      VB=0.956771,
      VC=0.956771,
      dP=[1.01267,1.01267,1.01267],
      dQ=[0.59267,0.59267,0.59267],
      P_a=lambda*7.233,
      Q_a=lambda*4.233,
      P_b=lambda*7.233,
      Q_b=lambda*4.233,
      P_c=lambda*7.233,
      Q_c=lambda*4.233) annotation (Placement(visible=true, transformation(
          origin={128,-74},
          extent={{-10,-10},{10,10}},
          rotation=90)));
equation
    connect(B4.p, pwLinewithOpeningSending.n) annotation (
      Line(points={{38,68},{38,24},{27.1,24},{27.1,24.5}},          color = {0, 0, 255}));
    connect(B2.p, pwLinewithOpeningSending.p) annotation (
      Line(points={{-54,-28},{-54,-6},{-8,-6},{-8,24},{10.9,24},{10.9,24.5}},                    color = {0, 0, 255}));
    connect(GenBus1.pwPin, B1.p) annotation (
      Line(points={{-139,93.8},{-130,93.8},{-130,69},{-129,69}},        color = {0, 0, 255}));
    connect(B8.p, GenBus8.pwPin) annotation (
      Line(points={{155,63},{180,63},{180,62.2},{178.8,62.2}},        color = {0, 0, 255}));
    connect(GenBus6.pwPin, B6.p) annotation (
      Line(points={{-59,102},{-40,102},{-40,119},{-41,119}},    color = {0, 0, 255}));
    connect(GenBus2.pwPin, B2.p) annotation (
      Line(points={{-66.8,-56},{-54,-56},{-54,-28}},         color = {0, 0, 255}));
    connect(GenBus3.pwPin, B3.p) annotation (
      Line(points={{41,-40.2},{50,-40.2},{50,-22}},       color = {0, 0, 255}));
    connect(L13.n, B11.p) annotation (
      Line(points={{13,130},{22,130},{22,140}},    color = {0, 0, 255}));
    connect(B6.p, L13.p) annotation (
      Line(points={{-41,119},{-41,130},{-5,130}},      color = {0, 0, 255}));
    connect(tWTransformerWithFixedTapRatio4.p, B7.p) annotation (
      Line(points={{110.6,62},{98,62},{98,101},{97,101}},      color = {0, 0, 255}));
    connect(tWTransformerWithFixedTapRatio4.n, B8.p) annotation (
      Line(points={{141.4,62},{156,62},{156,63},{155,63}},            color = {0, 0, 255}));
    connect(B9.p, tWTransformerWithFixedTapRatio3.n) annotation (
      Line(points={{92,144},{96,144},{96,135.4}},             color = {0, 0, 255}));
    connect(B7.p, tWTransformerWithFixedTapRatio3.p) annotation (
      Line(points={{97,101},{96,101},{96,104.6}},         color = {0, 0, 255}));
    connect(B3.p, Load3.p) annotation (
      Line(points={{50,-22},{90,-22},{90,-16}},                       color = {0, 0, 255}));
    connect(B4.p, Load4.p) annotation (
      Line(points={{38,68},{70,68},{70,54}},                      color = {0, 0, 255}));
    connect(B5.p, Load5.p) annotation (
      Line(points={{-18,60},{-18,30}},                                color = {0, 0, 255}));
    connect(B6.p, Load6.p) annotation (
      Line(points={{-41,119},{-41,90},{-40,90}},                    color = {0, 0, 255}));
    connect(B9.p, Load9.p) annotation (
      Line(points={{92,144},{92,168}},                        color = {0, 0, 255}));
    connect(B14.p, Load14.p) annotation (
      Line(points={{110,208},{110,230}},                              color = {0, 0, 255}));
    connect(B10.p, Load10.p) annotation (
      Line(points={{22,210},{22,232}},                            color = {0, 0, 255}));
    connect(Load13.p, B13.p) annotation (
      Line(points={{-58,228},{-58,210}},                              color = {0, 0, 255}));
    connect(B12.p, Load12.p) annotation (
      Line(points={{-122,168},{-122,184}},                            color = {0, 0, 255}));
    connect(B12.p, L11.p) annotation (
      Line(points={{-122,168},{-122,162},{-82,162},{-82,170.9}},                 color = {0, 0, 255}, smooth = Smooth.None));
    connect(L10.p, B6.p) annotation (
      Line(points={{-122,138.9},{-122,128},{-41,128},{-41,119}},                              color = {0, 0, 255}, smooth = Smooth.None));
    connect(B3.p, L6.p) annotation (
      Line(points={{50,-22},{50,2},{50,26.9},{50,26.9}},               color = {0, 0, 255}, smooth = Smooth.None));
    connect(B1.p, L3.p) annotation (
      Line(points={{-129,69},{-129,42},{-129,13},{-129,13}},                        color = {0, 0, 255}, smooth = Smooth.None));
    connect(B4.p, L6.n) annotation (
      Line(points={{38,68},{38,58},{50,58},{50,43.1}},              color = {0, 0, 255}, smooth = Smooth.None));
    connect(B4.p, L8.n) annotation (
      Line(points={{38,68},{38,58},{24,58},{24,47},{17,47}},                      color = {0, 0, 255}, smooth = Smooth.None));
    connect(B10.p, L15.n) annotation (
      Line(points={{22,210},{22,184},{58,184},{58,177.1}},       color = {0, 0, 255}, smooth = Smooth.None));
    connect(B10.p, L14.n) annotation (
      Line(points={{22,210},{22,174.15}},       color = {0, 0, 255}, smooth = Smooth.None));
    connect(B13.p, L12.n) annotation (
      Line(points={{-58,210},{-58,171.1}},     color = {0, 0, 255}, smooth = Smooth.None));
    connect(L16.n, B14.p) annotation (
      Line(points={{110,184.05},{110,196},{110,196},{110,208}}, color = {0, 0, 255}));
    connect(B11.p, L14.p) annotation (
      Line(points={{22,140},{22,158.85}},                     color = {0, 0, 255}));
    connect(B6.p, L12.p) annotation (
      Line(points={{-41,119},{-41,140.5},{-58,140.5},{-58,154.9}},      color = {0, 0, 255}));
    connect(B13.p, L11.n) annotation (
      Line(points={{-58,210},{-58,198},{-82,198},{-82,187.1}},       color = {0, 0, 255}));
    connect(L10.n, B12.p) annotation (
      Line(points={{-122,155.1},{-122,168}},                color = {0, 0, 255}));
    connect(B3.p, L5.p) annotation (
      Line(points={{50,-22},{50,-8},{27.1,-8}},             color = {0, 0, 255}));
    connect(B2.p, L1.p) annotation (
      Line(points={{-54,-28},{-54,-6},{-54,14.9},{-54,14.9}},               color = {0, 0, 255}));
    connect(L1.n, B5.p) annotation (
      Line(points={{-54,31.1},{-54,40.2},{-18,40.2},{-18,60}},              color = {0, 0, 255}));
    connect(B1.p, L7.p) annotation (
      Line(points={{-129,69},{-129,47},{-87,47}},                color = {0, 0, 255}));
    connect(B5.p, L7.n) annotation (
      Line(points={{-18,60},{-18,47},{-69,47}},                color = {0, 0, 255}));
    connect(B4.p, tWTransformerWithFixedTapRatio1.p) annotation (
      Line(points={{38,68},{38,100.6},{50,100.6}},                          color = {0, 0, 255}));
    connect(B5.p, tWTransformerWithFixedTapRatio.p) annotation (
      Line(points={{-18,60},{-16,60},{-16,78.6},{-12,78.6}},              color = {0, 0, 255}));
    connect(B6.p, tWTransformerWithFixedTapRatio.n) annotation (
      Line(points={{-41,119},{-41,112},{-12,112},{-12,109.4}},     color = {0, 0, 255}));
    connect(B4.p, tWTransformerWithFixedTapRatio2.p) annotation (
      Line(points={{38,68},{42,68},{42,82},{54.6,82}},              color = {0, 0, 255}));
    connect(B7.p, tWTransformerWithFixedTapRatio2.n) annotation (
      Line(points={{97,101},{97,91.5},{85.4,91.5},{85.4,82}},         color = {0, 0, 255}));
    connect(B9.p, tWTransformerWithFixedTapRatio1.n) annotation (
      Line(points={{92,144},{92,134},{50,134},{50,131.4}},                          color = {0, 0, 255}));
    connect(B5.p, L8.p) annotation (
      Line(points={{-18,60},{-8,60},{-8,47},{-1,47}},                                  color = {0, 0, 255}));
    connect(L15.p, B9.p) annotation (
      Line(points={{58,160.9},{92,160.9},{92,144}},     color = {0, 0, 255}));
    connect(B9.p, L16.p) annotation (
      Line(points={{92,144},{92,156},{110,156},{110,166.95}},                            color = {0, 0, 255}));
    connect(B14.p, L17.p) annotation (
      Line(points={{110,208},{110,218},{80,218},{80,198},{59.05,198}},                      color = {0, 0, 255}));
    connect(B13.p, L17.n) annotation (
      Line(points={{-58,210},{-58,198},{41.95,198}},                  color = {0, 0, 255}));
    connect(L5.n, B2.p) annotation (
      Line(points={{10.9,-8},{0,-8},{0,-34},{-54,-34},{-54,-28}},                        color = {0, 0, 255}));
    connect(L3.n, B2.p) annotation (
      Line(points={{-129,-5},{-129,-34},{-54,-34},{-54,-28}},                   color = {0, 0, 255}));
  connect(B11.p, Load11.p) annotation (Line(points={{22,140},{24,140},{24,120},
          {22,120}}, color={0,0,255}));
  connect(B2.p, Substation.p) annotation (Line(points={{-54,-28},{-48,-28},{-48,
          -74},{-23,-74}}, color={0,0,255}));
  connect(Substation.A, Bus650.p1)
    annotation (Line(points={{-1,-65},{16,-65},{16,-65}}, color={0,0,255}));
  connect(Substation.B, Bus650.p2)
    annotation (Line(points={{-1,-74},{16,-74}}, color={0,0,255}));
  connect(Substation.C, Bus650.p3) annotation (Line(points={{-1,-83},{8,-83},{8,
          -83},{16,-83}}, color={0,0,255}));
  connect(Bus650.p1, R650_632.Ain) annotation (Line(points={{16,-65},{22,-65},{
          22,-65},{41,-65}}, color={0,0,255}));
  connect(Bus650.p2, R650_632.Bin)
    annotation (Line(points={{16,-74},{41,-74}}, color={0,0,255}));
  connect(Bus650.p3, R650_632.Cin) annotation (Line(points={{16,-83},{18,-83},{
          18,-82},{41,-82},{41,-83}}, color={0,0,255}));
  connect(R650_632.Aout, Bus632.p1)
    annotation (Line(points={{67,-65},{94,-65},{94,-65}}, color={0,0,255}));
  connect(R650_632.Bout, Bus632.p2)
    annotation (Line(points={{67,-74},{94,-74}}, color={0,0,255}));
  connect(R650_632.Cout, Bus632.p3) annotation (Line(points={{67,-83},{78,-83},
          {78,-83},{94,-83}}, color={0,0,255}));
  connect(Bus632.p1, Load2.A) annotation (Line(points={{94,-65},{98,-65},{98,
          -65.1},{117,-65.1}}, color={0,0,255}));
  connect(Bus632.p2, Load2.B)
    annotation (Line(points={{94,-74},{117,-74}}, color={0,0,255}));
  connect(Bus632.p3, Load2.C) annotation (Line(points={{94,-83},{98,-83},{98,
          -82.9},{117,-82.9}}, color={0,0,255}));
    annotation (
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
end IEEE14_ThreePh_Bal_B02;
