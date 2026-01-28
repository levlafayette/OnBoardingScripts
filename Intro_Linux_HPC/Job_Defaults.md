**Job Defaults**

The Slurm workload manager has been preset on Spartan with a number of default options, so therefore it is not necessary to specify these at 
job submission. Indeed, the simplest job simply takes all the default settings and, as a result, requires no directives at all!

The defaults include physical as the partition, one task, one CPU per task, and 10 minutes of walltime. The resulting script can be as simple 
what is in `default.slurm` and can be launched with `sbatch default.slurm`:


```
$ cat default.slurm 
#!/bin/bash
who -u >> who.txt
$ sbatch default.slurm 
sbatch: You are submitting jobs under your home directory.
sbatch: We recommend to submit jobs under your project directory or scratch directory.
Submitted batch job 27249359
```
