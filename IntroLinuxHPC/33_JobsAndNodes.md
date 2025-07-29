**Jobs and Nodes**

It is important that users consider the node that their jobs are running on. Recall the generic supercomputer diagram; there is one or more 
login nodes, and a large number of compute nodes, which can be separated according to hardware or logical partitions. Job submission, that is, 
launching of scripts, can occur on the login node because the resource requests go the scheduler and when the job is due to run they will do so 
on one or more compute nodes.

However, jobs, that is computational-intensive activities that use multiple cores, should not be conducted on the login node. DON'T RUN JOBS ON 
THE LOGIN NODE!

All users will access the login node in order to check their files, submit jobs etc. If one or more users start to run computationally or I/O 
intensive tasks on the login node (such as forwarding of graphics, copying large files, running multicore jobs), then that will make operations 
difficult for everyone.
