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
ExecStep $xv_path/bin/xsim display_tb_behav -key {Behavioral:sim_1:Functional:display_tb} -tclbatch display_tb.tcl -log simulate.log
