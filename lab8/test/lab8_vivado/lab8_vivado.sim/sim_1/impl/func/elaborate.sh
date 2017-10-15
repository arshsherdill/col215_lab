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
ExecStep $xv_path/bin/xelab -wto dde87aad71274ad1b636dcaaf18c0016 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot lift2_controller_func_impl xil_defaultlib.lift2_controller -log elaborate.log
