#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim lift1_controller_time_synth -key {Post-Synthesis:sim_1:Timing:lift1_controller} -tclbatch lift1_controller.tcl -log simulate.log