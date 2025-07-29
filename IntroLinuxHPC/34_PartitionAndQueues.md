**Partitions and Queues**

Spartan has a number of partitions whose directives are set at job submission. To review these beforehand the core commands are `sinfo -s` or 
`sinfo -p $partition`. The first command provides a summary of the partition, including the partition name, the status of the partition, the 
maximum wall time that can be set, and the status of particular nodes (allocated, idle, out, total), and the list of compute nodes associated 
with the partition. The sinfo -p command gives similar information, but only for the specified partition.

There are several things worth noting here. Firstly, the default walltime is 30 days (the measurement is days-hours:minutes:seconds). Secondly, 
not all the partitions are available without membership to a specific group, often because they have purchased the hardware that has been added 
to the Spartan system; for example, the punim0396 partition is limited to that project.

The major partitions are: `cascade`, `sapphire`, `gpu-a100`, and `gpu-h100'. Note that nodes may belong to multiple partitions.


```
$ sinfo -s
...
```

```
$ sinfo -p sapphire
PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
sapphire*    up 30-00:00:0      4   resv spartan-bm[135,157,186,211]
sapphire*    up 30-00:00:0     16    mix spartan-bm[137-138,143-144,147,150,160,165-166,170,175-176,187,193,195,206]
sapphire*    up 30-00:00:0     53  alloc spartan-bm[136,139-142,145-146,148-149,151-156,158-159,161-164,167-169,171-174,177-181,188-192,194,196-205,207-210]
```

Previously mentioned commands `squeue` or `showq` to show a partition status. Example output illustrates that each job has its own unique 
JobID, and is followed by the job name, the user who launched it, the job state, how many cores it is using or requires, how long before the 
job completes, and when it started.


```
$ showq -p sapphir | less
..
```
