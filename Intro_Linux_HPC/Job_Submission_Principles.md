**Job Submission Principles**

The steps for job submission are (a) setup and launch., (b) monitor., and (c) retrieve results and analyse. Jobs are launched 
from the login node with resource requests and, when the job scheduler decides, run on compute nodes.

This sounds easy enough, but there are some things worth checking.

Firstly, your Slurm job submission must begin by invoking a shell. That is, the first line should be:

`#!/bin/bash`

After this, it must include directives to the scheduler. There are a number of defaults (e.g., cascade partition, 10 minutes of 
walltime, 1 node, 1 task, 1 cpu-per task etc) that do not need to be specified. However, it is worth checking how busy the 
partition is that you want to run on if you are in a hurry.

For a summary of the partitions use the sinfo command.

`sinfo -s`

For a list of running and queued jobs use the showq command e.g.,

```
showq -p cascade
showq -p sapphire
showq -p gpu-a100
```

Note that some directories (e.g.,. user home or project directories) are shared across the entire cluster so output is an 
accessible place.

Always ensure that the resource requests are provided before the shell commands. Resource requests are prefixed with #SBATCH - 
they will be interpreted by the shell as a comment, but understood by the scheduler as a directive. e.g.,

`#SBATCH --partition=sapphire`
 
After the directives to the scheduler are made, then include the shell commands. The first should be any modules that you wish to load.
