#!/bin/bash
(

# ROOT has to be setup externally because LD_LIBRARY_PATH cannot be modified from within Python.
. /sw/root/install/bin/thisroot.sh

# Setup path for hps python tools.
export PYTHONPATH=/work/slac/hps-python-tools/python/:$PYTHONPATH

#luigi --module sim_compare_batch SimCompareTask --local-scheduler
luigi --module hps.contrib.sim_compare_batch SimCompareTask --SimCompareTask-force --local-scheduler

)
