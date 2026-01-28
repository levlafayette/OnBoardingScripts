**Fair Share**

Spartan is a very busy system, sometimes with 100% worker node allocation on most days. The batch system, Slurm, runs jobs in 
the order of priority, with the priority of jobs being determined by a number of factors, including:


Job size: a higher priority is given to larger jobs

Wait time: the priority of your job increases the longer your job is in the queue

Fairshare: to ensure everyone has the same access to resources, a fairshare system is in place. This takes into account the 
resources used by a user's jobs in the last 14 days. The more resources used by your jobs in the last 14 days, the lower the 
priority of your new jobs

Backfilling: Where there is a gap in the resources and a job size, the scheduler will fill that gap to ensure maximum resource 
allocation.

Processor Limits: Particular partitions (e.g., GPGPU) will be determined by project allocations.

On Spartan, the calculated priority is dominated by the fairshare component, so the most common reason for your job taking a 
long time to start is because of the amount of resources you consumed in the last 14 days

You can see your job priority, and what makes up the priority, by using the sprio command. For example:

```
$ sprio -j 12409951
          JOBID PARTITION   PRIORITY        AGE  FAIRSHARE    JOBSIZE  PARTITION        QOS
       12409951 physical        4240       3000       1233          6          1          0
```
