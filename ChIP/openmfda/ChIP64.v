module ChIP64(inout inlet1, inlet2, inlet3, inlet4, inlet5, inlet6,
             inlet7, inlet8, inlet9, inlet10, inlet11, inlet12, inlet13, inlet14, inlet15,
             outlet1, outlet2,
             inlet1_ctrl, inlet2_ctrl, inlet3_ctrl, inlet4_ctrl, inlet5_ctrl,
             prep_inlet_ctrl, prep_outlet_ctrl,
             v1_ctrl, v2_ctrl, sv1_ctrl, outlet1_ctrl, outlet2_ctrl,
             bead_in,
             stage_in_ctrl,
             stage_out_ctrl, sieve_ctrl,
             collect_ctrl,
             stage_inlet_ctrl, stage_outlet_ctrl, bead_ctrl,
             pump1, pump2, pump3,
c_inlet1, c_outlet1, c_collect1,
c_inlet2, c_outlet2, c_collect2,
c_inlet3, c_outlet3, c_collect3,
c_inlet4, c_outlet4, c_collect4,
c_inlet5, c_outlet5, c_collect5,
c_inlet6, c_outlet6, c_collect6,
c_inlet7, c_outlet7, c_collect7,
c_inlet8, c_outlet8, c_collect8,
c_inlet9, c_outlet9, c_collect9,
c_inlet10, c_outlet10, c_collect10,
c_inlet11, c_outlet11, c_collect11,
c_inlet12, c_outlet12, c_collect12,
c_inlet13, c_outlet13, c_collect13,
c_inlet14, c_outlet14, c_collect14,
c_inlet15, c_outlet15, c_collect15,
c_inlet16, c_outlet16, c_collect16,
c_inlet17, c_outlet17, c_collect17,
c_inlet18, c_outlet18, c_collect18,
c_inlet19, c_outlet19, c_collect19,
c_inlet20, c_outlet20, c_collect20,
c_inlet21, c_outlet21, c_collect21,
c_inlet22, c_outlet22, c_collect22,
c_inlet23, c_outlet23, c_collect23,
c_inlet24, c_outlet24, c_collect24,
c_inlet25, c_outlet25, c_collect25,
c_inlet26, c_outlet26, c_collect26,
c_inlet27, c_outlet27, c_collect27,
c_inlet28, c_outlet28, c_collect28,
c_inlet29, c_outlet29, c_collect29,
c_inlet30, c_outlet30, c_collect30,
c_inlet31, c_outlet31, c_collect31,
c_inlet32, c_outlet32, c_collect32,
c_inlet33, c_outlet33, c_collect33,
c_inlet34, c_outlet34, c_collect34,
c_inlet35, c_outlet35, c_collect35,
c_inlet36, c_outlet36, c_collect36,
c_inlet37, c_outlet37, c_collect37,
c_inlet38, c_outlet38, c_collect38,
c_inlet39, c_outlet39, c_collect39,
c_inlet40, c_outlet40, c_collect40,
c_inlet41, c_outlet41, c_collect41,
c_inlet42, c_outlet42, c_collect42,
c_inlet43, c_outlet43, c_collect43,
c_inlet44, c_outlet44, c_collect44,
c_inlet45, c_outlet45, c_collect45,
c_inlet46, c_outlet46, c_collect46,
c_inlet47, c_outlet47, c_collect47,
c_inlet48, c_outlet48, c_collect48,
c_inlet49, c_outlet49, c_collect49,
c_inlet50, c_outlet50, c_collect50,
c_inlet51, c_outlet51, c_collect51,
c_inlet52, c_outlet52, c_collect52,
c_inlet53, c_outlet53, c_collect53,
c_inlet54, c_outlet54, c_collect54,
c_inlet55, c_outlet55, c_collect55,
c_inlet56, c_outlet56, c_collect56,
c_inlet57, c_outlet57, c_collect57,
c_inlet58, c_outlet58, c_collect58,
c_inlet59, c_outlet59, c_collect59,
c_inlet60, c_outlet60, c_collect60,
c_inlet61, c_outlet61, c_collect61,
c_inlet62, c_outlet62, c_collect62,
c_inlet63, c_outlet63, c_collect63,
c_inlet64, c_outlet64, c_collect64


);
  wire j1, j2;
  valve vinlet1(.fluid_in(inlet1), .fluid_out(j1), .air_in(inlet1_ctrl));
  valve vinlet2(.fluid_in(inlet2), .fluid_out(j1), .air_in(inlet2_ctrl));
  valve vinlet3(.fluid_in(inlet3), .fluid_out(j1), .air_in(inlet3_ctrl));
  valve vinlet4(.fluid_in(inlet4), .fluid_out(j1), .air_in(inlet4_ctrl));
  valve vinlet5(.fluid_in(inlet5), .fluid_out(j1), .air_in(inlet5_ctrl));

  prep_chamber prep(.inlet(j1), .inlet_ctrl(prep_inlet_ctrl),
                    .v1_ctrl(v1_ctrl), .v2_ctrl(v2_ctrl), .sv1_ctrl(sv1_ctrl),
                    .outlet1_ctrl(outlet1_ctrl), .outlet2_ctrl(outlet2_ctrl), .outlet1(outlet1), .outlet2(outlet2),
                    .ringout(prep_outlet_ctrl));
   reaction_chamber chamber1(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet1), .collect(c_collect1));
  reaction_chamber chamber2(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet2), .collect(c_collect2));
  reaction_chamber chamber3(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet3), .collect(c_collect3));
  reaction_chamber chamber4(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet4), .collect(c_collect4));
  reaction_chamber chamber5(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet5), .collect(c_collect5));
  reaction_chamber chamber6(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet6), .collect(c_collect6));
  reaction_chamber chamber7(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet7), .collect(c_collect7));
  reaction_chamber chamber8(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet8), .collect(c_collect8));
  reaction_chamber chamber9(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet9), .collect(c_collect9));
  reaction_chamber chamber10(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet10), .collect(c_collect10));
  reaction_chamber chamber11(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet11), .collect(c_collect11));
  reaction_chamber chamber12(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet12), .collect(c_collect12));
  reaction_chamber chamber13(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet13), .collect(c_collect13));
  reaction_chamber chamber14(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet14), .collect(c_collect14));
  reaction_chamber chamber15(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet15), .collect(c_collect15));
  reaction_chamber chamber16(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet16), .collect(c_collect16));
  reaction_chamber chamber17(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet17), .collect(c_collect17));
  reaction_chamber chamber18(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet18), .collect(c_collect18));
  reaction_chamber chamber19(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet19), .collect(c_collect19));
  reaction_chamber chamber20(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet20), .collect(c_collect20));
  reaction_chamber chamber21(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet21), .collect(c_collect21));
  reaction_chamber chamber22(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet22), .collect(c_collect22));
  reaction_chamber chamber23(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet23), .collect(c_collect23));
  reaction_chamber chamber24(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet24), .collect(c_collect24));
  reaction_chamber chamber25(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet25), .collect(c_collect25));
  reaction_chamber chamber26(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet26), .collect(c_collect26));
  reaction_chamber chamber27(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet27), .collect(c_collect27));
  reaction_chamber chamber28(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet28), .collect(c_collect28));
  reaction_chamber chamber29(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet29), .collect(c_collect29));
  reaction_chamber chamber30(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet30), .collect(c_collect30));
  reaction_chamber chamber31(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet31), .collect(c_collect31));
  reaction_chamber chamber32(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet32), .collect(c_collect32));
  reaction_chamber chamber33(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet33), .collect(c_collect33));
  reaction_chamber chamber34(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet34), .collect(c_collect34));
  reaction_chamber chamber35(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet35), .collect(c_collect35));
  reaction_chamber chamber36(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet36), .collect(c_collect36));
  reaction_chamber chamber37(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet37), .collect(c_collect37));
  reaction_chamber chamber38(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet38), .collect(c_collect38));
  reaction_chamber chamber39(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet39), .collect(c_collect39));
  reaction_chamber chamber40(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet40), .collect(c_collect40));
  reaction_chamber chamber41(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet41), .collect(c_collect41));
  reaction_chamber chamber42(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet42), .collect(c_collect42));
  reaction_chamber chamber43(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet43), .collect(c_collect43));
  reaction_chamber chamber44(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet44), .collect(c_collect44));
  reaction_chamber chamber45(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet45), .collect(c_collect45));
  reaction_chamber chamber46(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet46), .collect(c_collect46));
  reaction_chamber chamber47(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet47), .collect(c_collect47));
  reaction_chamber chamber48(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet48), .collect(c_collect48));
  reaction_chamber chamber49(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet49), .collect(c_collect49));
  reaction_chamber chamber50(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet50), .collect(c_collect50));
  reaction_chamber chamber51(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet51), .collect(c_collect51));
  reaction_chamber chamber52(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet52), .collect(c_collect52));
  reaction_chamber chamber53(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet53), .collect(c_collect53));
  reaction_chamber chamber54(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet54), .collect(c_collect54));
  reaction_chamber chamber55(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet55), .collect(c_collect55));
  reaction_chamber chamber56(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet56), .collect(c_collect56));
  reaction_chamber chamber57(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet57), .collect(c_collect57));
  reaction_chamber chamber58(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet58), .collect(c_collect58));
  reaction_chamber chamber59(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet59), .collect(c_collect59));
  reaction_chamber chamber60(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet60), .collect(c_collect60));
  reaction_chamber chamber61(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet61), .collect(c_collect61));
  reaction_chamber chamber62(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet62), .collect(c_collect62));
  reaction_chamber chamber63(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet63), .collect(c_collect63));
  reaction_chamber chamber64(.ring_in_ctrl(stage_in_ctrl),
               .ring_out_ctrl(stage_out_ctrl), .sieve_ctrl(sieve_ctrl),
               .collect_ctrl(collect_ctrl),
               .inlet_ctrl(stage_inlet_ctrl), .outlet_ctrl(stage_outlet_ctrl), .bead_ctrl(bead_ctrl),
               .pump1(pump1), .pump2(pump2), .pump3(pump3),
               .ring_in(j2), .inlet(c_inlet1), .bead_in(bead_in), .outlet(c_outlet64), .collect(c_collect64));
endmodule
