DEVICE grid_8

LAYER FLOW
H TREE m1 1 to 8 spacing=1200 flowChannelWidth=100;
H TREE m2 1 to 8  spacing=1200 flowChannelWidth=100;
 PORT p1, p2 portRadius=100;
SQUARE CELL TRAP ct1, ct2, ct3, ct4, ct5, ct6, ct7, ct8, ct9, ct10, ct11, ct12, ct13, ct14, ct15, ct16, ct17, ct18, ct19, ct20, ct21, ct22, ct23, ct24, ct25, ct26, ct27, ct28, ct29, ct30, ct31, ct32, ct33, ct34, ct35, ct36, ct37, ct38, ct39, ct40, ct41, ct42, ct43, ct44, ct45, ct46, ct47, ct48, ct49, ct50, ct51, ct52, ct53, ct54, ct55, ct56, ct57, ct58, ct59, ct60, ct61, ct62, ct63, ct64 chamberWidth=100 chamberLength=100 channelWidth=100;
CHANNEL c1 from p1 to m1 1 channelWidth=100;
CHANNEL c2 from m1 2 to ct1 1 channelWidth=100;
CHANNEL c3 from m1 3 to ct2 1 channelWidth=100;
CHANNEL c4 from m1 4 to ct3 1 channelWidth=100;
CHANNEL c5 from m1 5 to ct4 1 channelWidth=100;
CHANNEL c6 from m1 6 to ct5 1 channelWidth=100;
CHANNEL c7 from m1 7 to ct6 1 channelWidth=100;
CHANNEL c8 from m1 8 to ct7 1 channelWidth=100;
CHANNEL c9 from m1 9 to ct8 1 channelWidth=100;

CHANNEL c10 from ct1 2 to ct2 4 channelWidth=100;
CHANNEL c11 from ct2 2 to ct3 4 channelWidth=100;
CHANNEL c12 from ct3 2 to ct4 4 channelWidth=100;
CHANNEL c13 from ct4 2 to ct5 4 channelWidth=100;
CHANNEL c14 from ct5 2 to ct6 4 channelWidth=100;
CHANNEL c15 from ct6 2 to ct7 4 channelWidth=100;
CHANNEL c16 from ct7 2 to ct8 4 channelWidth=100;

CHANNEL c17 from ct1 3 to ct9 1 channelWidth=100;
CHANNEL c18 from ct2 3 to ct10 1 channelWidth=100;
CHANNEL c19 from ct3 3 to ct11 1 channelWidth=100;
CHANNEL c20 from ct4 3 to ct12 1 channelWidth=100;
CHANNEL c21 from ct5 3 to ct13 1 channelWidth=100;
CHANNEL c22 from ct6 3 to ct14 1 channelWidth=100;
CHANNEL c23 from ct7 3 to ct15 1 channelWidth=100;
CHANNEL c24 from ct8 3 to ct16 1 channelWidth=100;

CHANNEL c25 from ct9 2 to ct10 4 channelWidth=100;
CHANNEL c26 from ct10 2 to ct11 4 channelWidth=100;
CHANNEL c27 from ct11 2 to ct12 4 channelWidth=100;
CHANNEL c28 from ct12 2 to ct13 4 channelWidth=100;
CHANNEL c29 from ct13 2 to ct14 4 channelWidth=100;
CHANNEL c30 from ct14 2 to ct15 4 channelWidth=100;
CHANNEL c31 from ct15 2 to ct16 4 channelWidth=100;

CHANNEL c32 from ct9 3 to ct17 1 channelWidth=100;
CHANNEL c33 from ct10 3 to ct18 1 channelWidth=100;
CHANNEL c34 from ct11 3 to ct19 1 channelWidth=100;
CHANNEL c35 from ct12 3 to ct20 1 channelWidth=100;
CHANNEL c36 from ct13 3 to ct21 1 channelWidth=100;
CHANNEL c37 from ct14 3 to ct22 1 channelWidth=100;
CHANNEL c38 from ct15 3 to ct23 1 channelWidth=100;
CHANNEL c39 from ct16 3 to ct24 1 channelWidth=100;

CHANNEL c40 from ct17 2 to ct18 4 channelWidth=100;
CHANNEL c41 from ct18 2 to ct19 4 channelWidth=100;
CHANNEL c42 from ct19 2 to ct20 4 channelWidth=100;
CHANNEL c43 from ct20 2 to ct21 4 channelWidth=100;
CHANNEL c44 from ct21 2 to ct22 4 channelWidth=100;
CHANNEL c45 from ct22 2 to ct23 4 channelWidth=100;
CHANNEL c46 from ct23 2 to ct24 4 channelWidth=100;

CHANNEL c47 from ct17 3 to ct25 1 channelWidth=100;
CHANNEL c48 from ct18 3 to ct26 1 channelWidth=100;
CHANNEL c49 from ct19 3 to ct27 1 channelWidth=100;
CHANNEL c50 from ct20 3 to ct28 1 channelWidth=100;
CHANNEL c51 from ct21 3 to ct29 1 channelWidth=100;
CHANNEL c52 from ct22 3 to ct30 1 channelWidth=100;
CHANNEL c53 from ct23 3 to ct31 1 channelWidth=100;
CHANNEL c54 from ct24 3 to ct32 1 channelWidth=100;

CHANNEL c55 from ct25 2 to ct26 4 channelWidth=100;
CHANNEL c56 from ct26 2 to ct27 4 channelWidth=100;
CHANNEL c57 from ct27 2 to ct28 4 channelWidth=100;
CHANNEL c58 from ct28 2 to ct29 4 channelWidth=100;
CHANNEL c59 from ct29 2 to ct30 4 channelWidth=100;
CHANNEL c60 from ct30 2 to ct31 4 channelWidth=100;
CHANNEL c61 from ct31 2 to ct32 4 channelWidth=100;

CHANNEL c62 from ct25 3 to ct33 1 channelWidth=100;
CHANNEL c63 from ct26 3 to ct34 1 channelWidth=100;
CHANNEL c64 from ct27 3 to ct35 1 channelWidth=100;
CHANNEL c65 from ct28 3 to ct36 1 channelWidth=100;
CHANNEL c66 from ct29 3 to ct37 1 channelWidth=100;
CHANNEL c67 from ct30 3 to ct38 1 channelWidth=100;
CHANNEL c68 from ct31 3 to ct39 1 channelWidth=100;
CHANNEL c69 from ct32 3 to ct40 1 channelWidth=100;

CHANNEL c70 from ct33 2 to ct34 4 channelWidth=100;
CHANNEL c71 from ct34 2 to ct35 4 channelWidth=100;
CHANNEL c72 from ct35 2 to ct36 4 channelWidth=100;
CHANNEL c73 from ct36 2 to ct37 4 channelWidth=100;
CHANNEL c74 from ct37 2 to ct38 4 channelWidth=100;
CHANNEL c75 from ct38 2 to ct39 4 channelWidth=100;
CHANNEL c76 from ct39 2 to ct40 4 channelWidth=100;

CHANNEL c77 from ct33 3 to ct41 1 channelWidth=100;
CHANNEL c78 from ct34 3 to ct42 1 channelWidth=100;
CHANNEL c79 from ct35 3 to ct43 1 channelWidth=100;
CHANNEL c80 from ct36 3 to ct44 1 channelWidth=100;
CHANNEL c81 from ct37 3 to ct45 1 channelWidth=100;
CHANNEL c82 from ct38 3 to ct46 1 channelWidth=100;
CHANNEL c83 from ct39 3 to ct47 1 channelWidth=100;
CHANNEL c84 from ct40 3 to ct48 1 channelWidth=100;

CHANNEL c85 from ct41 2 to ct42 4 channelWidth=100;
CHANNEL c86 from ct42 2 to ct43 4 channelWidth=100;
CHANNEL c87 from ct43 2 to ct44 4 channelWidth=100;
CHANNEL c88 from ct44 2 to ct45 4 channelWidth=100;
CHANNEL c89 from ct45 2 to ct46 4 channelWidth=100;
CHANNEL c90 from ct46 2 to ct47 4 channelWidth=100;
CHANNEL c91 from ct47 2 to ct48 4 channelWidth=100;

CHANNEL c92 from ct41 3 to ct49 1 channelWidth=100;
CHANNEL c93 from ct42 3 to ct50 1 channelWidth=100;
CHANNEL c94 from ct43 3 to ct51 1 channelWidth=100;
CHANNEL c95 from ct44 3 to ct52 1 channelWidth=100;
CHANNEL c96 from ct45 3 to ct53 1 channelWidth=100;
CHANNEL c97 from ct46 3 to ct54 1 channelWidth=100;
CHANNEL c98 from ct47 3 to ct55 1 channelWidth=100;
CHANNEL c99 from ct48 3 to ct56 1 channelWidth=100;

CHANNEL c100 from ct49 2 to ct50 4 channelWidth=100;
CHANNEL c101 from ct50 2 to ct51 4 channelWidth=100;
CHANNEL c102 from ct51 2 to ct52 4 channelWidth=100;
CHANNEL c103 from ct52 2 to ct53 4 channelWidth=100;
CHANNEL c104 from ct53 2 to ct54 4 channelWidth=100;
CHANNEL c105 from ct54 2 to ct55 4 channelWidth=100;
CHANNEL c106 from ct55 2 to ct56 4 channelWidth=100;

CHANNEL c107 from ct49 3 to ct57 1 channelWidth=100;
CHANNEL c108 from ct50 3 to ct58 1 channelWidth=100;
CHANNEL c109 from ct51 3 to ct59 1 channelWidth=100;
CHANNEL c110 from ct52 3 to ct60 1 channelWidth=100;
CHANNEL c111 from ct53 3 to ct61 1 channelWidth=100;
CHANNEL c112 from ct54 3 to ct62 1 channelWidth=100;
CHANNEL c113 from ct55 3 to ct63 1 channelWidth=100;
CHANNEL c114 from ct56 3 to ct64 1 channelWidth=100;

CHANNEL c115 from ct57 2 to ct58 4 channelWidth=100;
CHANNEL c116 from ct58 2 to ct59 4 channelWidth=100;
CHANNEL c117 from ct59 2 to ct60 4 channelWidth=100;
CHANNEL c118 from ct60 2 to ct61 4 channelWidth=100;
CHANNEL c119 from ct61 2 to ct62 4 channelWidth=100;
CHANNEL c120 from ct62 2 to ct63 4 channelWidth=100;
CHANNEL c121 from ct63 2 to ct64 4 channelWidth=100;
CHANNEL c122 from ct57 3 to m2 1 channelWidth=100;
CHANNEL c123 from ct58 3 to m2 2 channelWidth=100;
CHANNEL c124 from ct59 3 to m2 3 channelWidth=100;
CHANNEL c125 from ct60 3 to m2 4 channelWidth=100;
CHANNEL c126 from ct61 3 to m2 5 channelWidth=100;
CHANNEL c127 from ct62 3 to m2 6 channelWidth=100;
CHANNEL c128 from ct63 3 to m2 7 channelWidth=100;
CHANNEL c129 from ct64 3 to m2 8 channelWidth=100;
CHANNEL c130 from m2 9 to p2 channelWidth=100;

END LAYER

LAYER CONTROL
 V BANK cpb1 of 8  PORT portRadius=100  spacing=1500 ;
 V BANK cpb2 of 7  PORT portRadius=100  spacing=1500 ;

VALVE v1 on c10 width=100 length=300;
VALVE v2 on c11 width=100 length=300;
VALVE v3 on c12 width=100 length=300;
VALVE v4 on c13 width=100 length=300;
VALVE v5 on c14 width=100 length=300;
VALVE v6 on c15 width=100 length=300;
VALVE v7 on c16 width=100 length=300;

NET n1 from cpb1_1 to v1, v2, v3, v4, v5, v6, v7 channelWidth=50;

VALVE v8 on c17 width=300 length=100;
VALVE v9 on c18 width=300 length=100;
VALVE v10 on c19 width=300 length=100;
VALVE v11 on c20 width=300 length=100;
VALVE v12 on c21 width=300 length=100;
VALVE v13 on c22 width=300 length=100;
VALVE v14 on c23 width=300 length=100;
VALVE v15 on c24 width=300 length=100;

CHANNEL cc1 from v8 to v9 channelWidth=50;
CHANNEL cc2 from v9 to v10 channelWidth=50;
CHANNEL cc3 from v10 to v11 channelWidth=50;
CHANNEL cc4 from v11 to v12 channelWidth=50;
CHANNEL cc5 from v12 to v13 channelWidth=50;
CHANNEL cc6 from v13 to v14 channelWidth=50;
CHANNEL cc7 from v14 to v15 channelWidth=50;
CHANNEL cc8 from v15 to cpb2_1 channelWidth=50;

VALVE v16 on c25 width=100 length=300;
VALVE v17 on c26 width=100 length=300;
VALVE v18 on c27 width=100 length=300;
VALVE v19 on c28 width=100 length=300;
VALVE v20 on c29 width=100 length=300;
VALVE v21 on c30 width=100 length=300;
VALVE v22 on c31 width=100 length=300;

NET n2 from cpb1_2 to v16, v17, v18, v19, v20, v21, v22 channelWidth=50;

VALVE v23 on c32 width=300 length=100;
VALVE v24 on c33 width=300 length=100;
VALVE v25 on c34 width=300 length=100;
VALVE v26 on c35 width=300 length=100;
VALVE v27 on c36 width=300 length=100;
VALVE v28 on c37 width=300 length=100;
VALVE v29 on c38 width=300 length=100;
VALVE v30 on c39 width=300 length=100;

CHANNEL cc9 from v23 to v24 channelWidth=50;
CHANNEL cc10 from v24 to v25 channelWidth=50;
CHANNEL cc11 from v25 to v26 channelWidth=50;
CHANNEL cc12 from v26 to v27 channelWidth=50;
CHANNEL cc13 from v27 to v28 channelWidth=50;
CHANNEL cc14 from v28 to v29 channelWidth=50;
CHANNEL cc15 from v29 to v30 channelWidth=50;
CHANNEL cc16 from v30 to cpb2_2 channelWidth=50;

VALVE v31 on c40 width=100 length=300;
VALVE v32 on c41 width=100 length=300;
VALVE v33 on c42 width=100 length=300;
VALVE v34 on c43 width=100 length=300;
VALVE v35 on c44 width=100 length=300;
VALVE v36 on c45 width=100 length=300;
VALVE v37 on c46 width=100 length=300;

NET n3 from cpb1_3 to v31, v32, v33, v34, v35, v36, v37 channelWidth=50;

VALVE v38 on c47 width=300 length=100;
VALVE v39 on c48 width=300 length=100;
VALVE v40 on c49 width=300 length=100;
VALVE v41 on c50 width=300 length=100;
VALVE v42 on c51 width=300 length=100;
VALVE v43 on c52 width=300 length=100;
VALVE v44 on c53 width=300 length=100;
VALVE v45 on c54 width=300 length=100;

CHANNEL cc17 from v38 to v39 channelWidth=50;
CHANNEL cc18 from v39 to v40 channelWidth=50;
CHANNEL cc19 from v40 to v41 channelWidth=50;
CHANNEL cc20 from v41 to v42 channelWidth=50;
CHANNEL cc21 from v42 to v43 channelWidth=50;
CHANNEL cc22 from v43 to v44 channelWidth=50;
CHANNEL cc23 from v44 to v45 channelWidth=50;
CHANNEL cc24 from v45 to cpb2_3 channelWidth=50;

VALVE v46 on c55 width=100 length=300;
VALVE v47 on c56 width=100 length=300;
VALVE v48 on c57 width=100 length=300;
VALVE v49 on c58 width=100 length=300;
VALVE v50 on c59 width=100 length=300;
VALVE v51 on c60 width=100 length=300;
VALVE v52 on c61 width=100 length=300;

NET n4 from cpb1_4 to v46, v47, v48, v49, v50, v51, v52 channelWidth=50;

VALVE v53 on c62 width=300 length=100;
VALVE v54 on c63 width=300 length=100;
VALVE v55 on c64 width=300 length=100;
VALVE v56 on c65 width=300 length=100;
VALVE v57 on c66 width=300 length=100;
VALVE v58 on c67 width=300 length=100;
VALVE v59 on c68 width=300 length=100;
VALVE v60 on c69 width=300 length=100;

CHANNEL cc25 from v53 to v54 channelWidth=50;
CHANNEL cc26 from v54 to v55 channelWidth=50;
CHANNEL cc27 from v55 to v56 channelWidth=50;
CHANNEL cc28 from v56 to v57 channelWidth=50;
CHANNEL cc29 from v57 to v58 channelWidth=50;
CHANNEL cc30 from v58 to v59 channelWidth=50;
CHANNEL cc31 from v59 to v60 channelWidth=50;
CHANNEL cc32 from v60 to cpb2_4 channelWidth=50;

VALVE v61 on c70 width=100 length=300;
VALVE v62 on c71 width=100 length=300;
VALVE v63 on c72 width=100 length=300;
VALVE v64 on c73 width=100 length=300;
VALVE v65 on c74 width=100 length=300;
VALVE v66 on c75 width=100 length=300;
VALVE v67 on c76 width=100 length=300;

NET n5 from cpb1_5 to v61, v62, v63, v64, v65, v66, v67 channelWidth=50;

VALVE v68 on c77 width=300 length=100;
VALVE v69 on c78 width=300 length=100;
VALVE v70 on c79 width=300 length=100;
VALVE v71 on c80 width=300 length=100;
VALVE v72 on c81 width=300 length=100;
VALVE v73 on c82 width=300 length=100;
VALVE v74 on c83 width=300 length=100;
VALVE v75 on c84 width=300 length=100;

CHANNEL cc33 from v68 to v69 channelWidth=50;
CHANNEL cc34 from v69 to v70 channelWidth=50;
CHANNEL cc35 from v70 to v71 channelWidth=50;
CHANNEL cc36 from v71 to v72 channelWidth=50;
CHANNEL cc37 from v72 to v73 channelWidth=50;
CHANNEL cc38 from v73 to v74 channelWidth=50;
CHANNEL cc39 from v74 to v75 channelWidth=50;
CHANNEL cc40 from v75 to cpb2_5 channelWidth=50;

VALVE v76 on c85 width=100 length=300;
VALVE v77 on c86 width=100 length=300;
VALVE v78 on c87 width=100 length=300;
VALVE v79 on c88 width=100 length=300;
VALVE v80 on c89 width=100 length=300;
VALVE v81 on c90 width=100 length=300;
VALVE v82 on c91 width=100 length=300;

NET n6 from cpb1_6 to v76, v77, v78, v79, v80, v81, v82 channelWidth=50;

VALVE v83 on c92 width=300 length=100;
VALVE v84 on c93 width=300 length=100;
VALVE v85 on c94 width=300 length=100;
VALVE v86 on c95 width=300 length=100;
VALVE v87 on c96 width=300 length=100;
VALVE v88 on c97 width=300 length=100;
VALVE v89 on c98 width=300 length=100;
VALVE v90 on c99 width=300 length=100;

CHANNEL cc41 from v83 to v84 channelWidth=50;
CHANNEL cc42 from v84 to v85 channelWidth=50;
CHANNEL cc43 from v85 to v86 channelWidth=50;
CHANNEL cc44 from v86 to v87 channelWidth=50;
CHANNEL cc45 from v87 to v88 channelWidth=50;
CHANNEL cc46 from v88 to v89 channelWidth=50;
CHANNEL cc47 from v89 to v90 channelWidth=50;
CHANNEL cc48 from v90 to cpb2_6 channelWidth=50;

VALVE v91 on c100 width=100 length=300;
VALVE v92 on c101 width=100 length=300;
VALVE v93 on c102 width=100 length=300;
VALVE v94 on c103 width=100 length=300;
VALVE v95 on c104 width=100 length=300;
VALVE v96 on c105 width=100 length=300;
VALVE v97 on c106 width=100 length=300;

NET n7 from cpb1_7 to v91, v92, v93, v94, v95, v96, v97 channelWidth=50;

VALVE v98 on c107 width=300 length=100;
VALVE v99 on c108 width=300 length=100;
VALVE v100 on c109 width=300 length=100;
VALVE v101 on c110 width=300 length=100;
VALVE v102 on c111 width=300 length=100;
VALVE v103 on c112 width=300 length=100;
VALVE v104 on c113 width=300 length=100;
VALVE v105 on c114 width=300 length=100;

CHANNEL cc49 from v98 to v99 channelWidth=50;
CHANNEL cc50 from v99 to v100 channelWidth=50;
CHANNEL cc51 from v100 to v101 channelWidth=50;
CHANNEL cc52 from v101 to v102 channelWidth=50;
CHANNEL cc53 from v102 to v103 channelWidth=50;
CHANNEL cc54 from v103 to v104 channelWidth=50;
CHANNEL cc55 from v104 to v105 channelWidth=50;
CHANNEL cc56 from v105 to cpb2_7 channelWidth=50;

VALVE v106 on c115 width=100 length=300;
VALVE v107 on c116 width=100 length=300;
VALVE v108 on c117 width=100 length=300;
VALVE v109 on c118 width=100 length=300;
VALVE v110 on c119 width=100 length=300;
VALVE v111 on c120 width=100 length=300;
VALVE v112 on c121 width=100 length=300;

NET n8 from cpb1_8 to v106, v107, v108, v109, v110, v111, v112 channelWidth=50;

END LAYER
