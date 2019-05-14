if {[file exist [project env]] > 0} {project close}
if {[file exist "F:/quartus_project/DDC_test/NCO1.mpf"] == 0} {
  project new F:/quartus_project/DDC_test/ NCO1
} else	{
project open NCO1
}
if {[file exist work] ==0} 	{
  exec vlib work
  exec vmap work work}      
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/220model.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/sgate.v
vlog NCO1.vo
vlog NCO1_tb.v
vsim -novopt NCO1_tb
do NCO1_wave.do
run 22000 ns;
