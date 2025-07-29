**Multiple Job Steps**

Sometimes a job needs to consist of several steps that need to be carried on sequence, even if the individual components are in parallel. In 
this case the entire job resource set can be called with an aggregation of walltime and with a maximum reduction operation for memory and 
resources.

Whilst this can be convenient, to include everything in a single script, it runs the risk on a busy system of being inefficient in the queue. 
Using job dependencies is an excellent alternative. Nevertheless, a generic example is offered as follows:

 
```
#!/bin/bash
#SBATCH --­partition cascade
#SBATCH ­­--nodes=2
#SBATCH ­­--ntasks=12
#SBATCH --time=24:00:00
srun -N 2 -n 12 -t 06:00:00 ./my­mpi­app
export OMP_NUM_THREADS=6
srun -N 1 -n2 -c $OMP_NUM_THREADS -t 12:00:00 ./myompapp
srun -N 1 -n 1 -t 06:00:00 ./myserialapp
```

Whilst the above example would be a lot more effective and safer as job dependencies, multiple job steps are a good alternative if the time 
spent in the secondary and tertiary steps are smaller than the spin-up time and resources of launching the additional steps in the queue; for 
example a mostly parallel job that has a small (e.g., a couple of minutes) serial component.
