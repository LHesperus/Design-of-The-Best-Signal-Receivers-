if {[file exist [project env]] > 0} {project close}
if {[file exist "C:/Users/RadarC508/Desktop/DDC/NCO.mpf"] == 0} {
  project new C:/Users/RadarC508/Desktop/DDC/ NCO
} else	{
project open NCO
}
if {[file exist work] ==0} 	{
  exec vlib work
  exec vmap work work}      
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/220model.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v
vlog $env(QUARTUS_ROOTDIR)/eda/sim_lib/sgate.v
vlog NCO.vo
vlog NCO_tb.v
vsim -novopt NCO_tb
do NCO_wave.do
run 22000 ns;
