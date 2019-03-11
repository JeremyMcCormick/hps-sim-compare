#luigi --module hps.batch.tasks SlicBaseTask --SlicBaseTask-mac /work/slac/hps-sim-compare/slic_init.mac --local-scheduler

rm slicEvents.slcio
#luigi --module hps.batch.tasks SlicBaseTask --local-scheduler
luigi --module hps.batch.tasks SlicBaseTask --SlicBaseTask-nevents=1 --local-scheduler
