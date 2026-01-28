**Memory Allocation**

By default the scheduler will set memory equal to the total amount on a compute node divided by the number of cores requested. In some cases 
this might not be enough (e.g., very large dataset that needs to be loaded with low level of parallelisation).

Additional memory can be allocated with the `--mem=[mem][M|G|T]` directive (entire job) or `--mem-per-cpu=[mem][M|G|T]` (per core). Maximum 
should be based around total cores -1 (for system processes). The --mem-per-cpu directive is for threads for OpenMP applications and processor 
ranks for MPI.
