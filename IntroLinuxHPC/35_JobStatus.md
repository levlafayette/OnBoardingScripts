**Job Status**

Regardless of what directory one is in (e.g., /home/$user or /data/$projectid), or even node (e.g., the login node or a compute node through an 
interactive job) one can launch a job to the Slurm workload manager with the `sbatch $slurmscript` command. Due to different network 
capabilities, it is best to use the project or scratch directories, however, the home directory is adequate for test jobs.

For example, the following will launch the Slurm script `specific.slurm`. This job will only run on a specific compute node. Note that the 
script does not need to be executable, and the .slurm suffix is just a personal convention. The output of the submission provides the unique 
job ID. The status of the job can be checked with `squeue -u $username` (for all jobs by a user) or `squeue -j $jobid`, with a detailed command 
with `scontrol show job $jobid` (SLURM), or all user's jobs `squeue -u $username`. Note that the output of squeue includes the jobid, the 
partition it is running on, job name, user, status (pending, running, completing), time it has been running, the nodes it is running (or will 
be) on, and the reason that is currently not running. To check resource usage `sacct -j $jobid --format=JobID,JobName,MaxRSS,Elapsed`.  A job 
can be cancelled with `scancel $jobid`. You cannot cancel other people's jobs!

```
$ sbatch specific.slurm 
sbatch: You are submitting jobs under your home directory.
sbatch: We recommend to submit jobs under your project directory or scratch directory.
Submitted batch job 27249207
$ squeue -u lev
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON) 
          27249207  physical specific      lev PD       0:00      1 (Priority) 
$ scancel 27249207
$ squeue -u lev
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
$ sacct -j 27249207 --format=JobID,JobName,MaxRSS,Elapsed
       JobID    JobName     MaxRSS    Elapsed 
------------ ---------- ---------- ---------- 
27249207     specific.+              00:00:00
```
