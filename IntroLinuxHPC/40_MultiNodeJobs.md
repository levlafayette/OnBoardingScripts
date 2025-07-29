**Multinode Jobs**

An application that has been written and compiled for distributed-memory parallelisation, a multicore and multi-node job can be invoked. A 
generic script of this form will look like the following.

```
#!/bin/bash
#SBATCH -­p physical
#SBATCH ­­--nodes=2
#SBATCH ­­--ntasks-per-node=8
module load my­app­compiler/version
srun my­mpi­app
```

To calculate the number of cores being used, multiple the number of nodes by the ntasks-per-node. Multinode jobs may be slower if they have a 
lot of interprocess communication and they cross compute nodes, compared to having all the cores on a single node. However, multinode is often 
it is the only way to scale to a very large number of cores.

MPI is written for C and Fortran, however there is an MPI extension library avaible for Python. See the examples at `/apps/examples/Python`, 
where a job submission script exists for single core, multicore, and multinode and multicore.
