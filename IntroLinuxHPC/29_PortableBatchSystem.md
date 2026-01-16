**The Portable Batch System**

Invoking modules usually occurs within a script for the Portable Batch System (PBS), which performs job scheduling by assigning 
unattended background tasks expressed as batch jobs, among the available resources. These scripts consist of a set of directives 
to the scheduler and a set of shell commands.

It was originally developed by MRJ Technology Solutions under contract to NASA in the early 1990s. Released as an open-source 
product as OpenPBS, it was forked by Adaptive Computing as TORQUE (Terascale Open-source Resource and QUEue Manager). Many of 
the original engineering team now part of Altair Engineering who have their own version, PBSPro.

The batch system typically consists of a resource manager (e.g., TORQUE) and a job scheduler (e.g., Maui, Moab), or a 
combination (e.g., PBSPro, Slurm). TORQUE and MOAB was used on the Edward HPC system. Slurm is used on Spartan.

It is important to note that whilst the concepts used in schedulers are very similar each and every HPC system will have its own 
specialised commands (e.g., for their accounting system, for their modules etc). Thus, whilst it is possible to use scripts from 
another system as a guide for ideas, they will not necessarily work on a different system.

Spartan has a large collection of scripts designed specifically for this system in the directory /apps/examples

```
$ ls /apps/examples/
```
