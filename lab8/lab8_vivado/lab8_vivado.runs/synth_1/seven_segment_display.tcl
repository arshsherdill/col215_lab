# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_vivado/lab8_vivado.cache/wt [current_project]
set_property parent.project_path /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_vivado/lab8_vivado.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_vivado/lab8_vivado.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_testing/seven_segment.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_testing/seven_segment.xdc
set_property used_in_implementation false [get_files /media/ad/Area51/workspace/col215_prac_lab/lab8/lab8_testing/seven_segment.xdc]


synth_design -top seven_segment_display -part xc7a35tcpg236-1


write_checkpoint -force -noxdef seven_segment_display.dcp

catch { report_utilization -file seven_segment_display_utilization_synth.rpt -pb seven_segment_display_utilization_synth.pb }