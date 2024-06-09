<table>
<tr><th>Benchmark</th><th colspan=3>Component count</th><th colspan=2>Runtime (s)</th><th colspan=2>Effective area (mm^2)</th><th colspan=2>Linear channel length (mm)</th></tr>
<tr><th></th><th> IO </th><th> Valve </th><th> Other </th><th> OpenMFDA </th><th> Columba S </th><th> OpenMFDA </th><th> Columba S </th><th> OpenMFDA </th><th> Columba S</th></tr>
<tr><td>HIV1</td><td> 16 </td><td> 8 </td><td> 3 </td><td> 24 </td><td>  </td><td> 6.9 </td></td><td><td> 204.4 </td><td></td></tr>
<tr><td>ChIP 4 </td><td> 42 </td><td> 51 </td><td> 0  </td><td> 4 </td><td> 1 </td><td> 255 </td><td> 862 </td><td> 489 </td><td> 114 </td></tr>
<tr><td>ChIP 10 </td><td> 60 </td><td> 101 </td><td> 1  </td><td> 14 </td><td> 2 </td><td> 554 </td><td> 1107 </td><td> 1107 </td><td> 172</td></tr>
<tr><td>mRNAiso 1 </td><td> 19 </td><td> 14 </td><td> 0 </td><td> 25 </td><td>  </td><td> 6.9 </td><td></td><td> 198.2 </td><td></td></tr>
<tr><td>mRNAiso 2 </td><td> 24 </td><td>  31 </td><td> 0 </td><td> 59 </td><td>  </td><td> 15.2 </td><td></td><td> 793.7 </td><td></td></tr>
<tr><td>mRNAiso 3</td><td> 27 </td><td> 45 </td><td> 0 </td><td> 94 </td><td>  </td><td> 22.1 </td><td></td><td> 614.5 </td><td></td></tr>
<tr><td>mRNAiso 4 </td><td> 30 </td><td> 59 </td><td> 0 </td><td> 6 </td><td> 1 </td><td> 294 </td><td> 1564 </td><td> 560 </td><td> 147</td></tr>
<tr><td>mnacidpro 1 </td><td> 25 </td><td> 19 </td><td> 0 </td><td> 37 </td><td>  </td><td> 9.3 </td><td></td><td> 627.4 </td><td></td></tr>
<tr><td>mnacidpro 2 </td><td> 25 </td><td> 35 </td><td> 0 </td><td> 80 </td><td>  </td><td>  17.2</td><td> </td><td> 1067.4 </td><td></td></tr>
<tr><td>mnacidpro 3 </td><td> 27 </td><td> 51 </td><td> 0 </td><td> 5 </td><td> 1 </td><td> 255 </td><td> 5455</td><td> 469 </td><td> 77 </td></tr>
<tr><td>kinase 1  </td><td> 29 </td><td> 22 </td><td> 4 </td><td> 46 </td><td>  </td><td> 14.7 </td><td></td><td> 619.6 </td><td></td></tr>
<tr><td>kinase 2* </td><td> 37 </td><td> 44 </td><td> 8 </td><td> 107 </td><td> 74 </td><td> 18.1 </td><td>258.0 </td><td> 870.2</td><td> 163.5 </td></tr>
</table>

<table>
<tr><th>Benchmark</th><th colspan=3>Component count</th><th colspan=2>Runtime (s)</th><th colspan=2>Effective area (mm^2)</th><th colspan=2>Linear channel length (mm)</th></tr>
<tr><th></th><th> IO </th><th> Valve </th><th> Other </th><th> OpenMFDA </th><th> Fluigi </th><th> OpenMFDA </th><th> Fluigi </th><th> OpenMFDA </th><th> Fluigi</th></tr>
<tr><td> simple       </td><td> 5  </td><td> 2   </td><td> 1  </td><td> 2 </td><td> 5   </td><td> 15  </td><td> 144 </td><td> 11  </td><td> - </td></tr>
<tr><td> grad_cells   </td><td> 7  </td><td> 6   </td><td> 14 </td><td> 2 </td><td> 37  </td><td> 95  </td><td> 555 </td><td> 95  </td><td> - </td></tr>
<tr><td> multi_input  </td><td> 11 </td><td> 4   </td><td> 5  </td><td> 2 </td><td> 25  </td><td> 40  </td><td> 424 </td><td> 37  </td><td> - </td></tr>
<tr><td> hasty        </td><td> 5  </td><td> 0   </td><td> 22 </td><td> 3 </td><td> 22  </td><td> 110 </td><td> 285 </td><td> 162 </td><td> - </td></tr>
<tr><td> rotary_cells </td><td> 18 </td><td> 17  </td><td> 7  </td><td> 3 </td><td> 56  </td><td> 120 </td><td> 594 </td><td> 162 </td><td> - </td></tr>
<tr><td> logic04      </td><td> 41 </td><td> 37  </td><td> 4  </td><td> 3 </td><td> 94  </td><td> 185 </td><td> 780 </td><td> 268 </td><td> - </td></tr>
<tr><td> rotary16     </td><td> 53 </td><td> 65  </td><td> 0  </td><td> 3 </td><td> 161 </td><td> 324 </td><td> 985 </td><td> 503 </td><td> - </td></tr>
<tr><td> net_mux      </td><td> 17 </td><td> 34  </td><td> 15 </td><td> 4 </td><td> 167 </td><td> 245 </td><td> 635 </td><td> 350 </td><td> - </td></tr>
<tr><td> grid_8       </td><td> 30 </td><td> 134 </td><td> 78 </td><td> 4 </td><td> 769 </td><td> 739 </td><td> 707 </td><td> 522 </td><td> - </td></tr>
</table>

Columba results from [Tseng 2018]. Channel length only included flow path.

Fluigi benchmark results from [Huang 2015]. Channel length was unreported.


## Citations

T.-M. Tseng et al., “Columba S: a scalable co-layout design automation tool for microfluidic large-scale integration,” in Proceedings of the 55th Annual Design Automation Conference, in DAC ’18. New York, NY, USA: Association for Computing Machinery, Jun. 2018, pp. 1–6. doi: 10.1145/3195970.3196011.

H. Huang, “Fluigi: an end-to-end software workflow for microfluidic design,” 2016. Accessed: Sep. 14, 2023. [Online]. Available: https://open.bu.edu/handle/2144/14628
