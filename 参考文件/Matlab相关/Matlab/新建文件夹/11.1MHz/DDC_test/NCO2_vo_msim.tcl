if {[file exist [project env]] > 0} {project close}
if {[file exist "F:/quartus_project/DDC_test(pll)/DDC_test/NCO2.mpf"] == 0} {
  project new F:/quartus_project/DDC_test(pll)/DDC_test/ NCO2
} else	{
project open NCO2
}
if {[file exist work] ==0} 	{
  exec vlib work
  exec vmap work work}      
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/220model.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/sgate.v
vlog NCO2.vo
vlog NCO2_tb.v
vsim -novopt NCO2_tb
do NCO2_wave.do
run 22000 ns;
