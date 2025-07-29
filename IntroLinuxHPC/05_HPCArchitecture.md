Understanding the underlying physical hardware and software logic in an HPC system will help you optimize your job 
submission, performance, and troubleshooting. It is possible, but sub-optimal, to simply follow existing scripts without 
really understanding what is going on, and hope that the results are right, or have been run properly.

On the other hand, it is not necessary or worthwhile as part of "HPC essentials" to understand in great depth these 
components. Knowing, at a high level, what is going on "under the hood" and the relationship between the components is 
enough to work out how to make your job submissions run better and to identify where problems might be when they arise.

HPC systems, and Spartan is certainly an example, will be housed in one or more chassis, or racks. Inside these are the 
multiple computer system units, interconnect, and power supplies. The individual computer system units, commonly described 
as "nodes", will contain their own memory, local disk, and sockets. The sockets will include one or more processors that 
have one or more cores that carry out the processing. In addition, there are logical processes that have shared resources 
(e.g., memory space) that may have multiple instruction-stream threads.

HPC processors will include CPU (Central Processing Units), and optionally GPU (Graphics Processing Units) as a type of 
vector processing unit succeeding vector computers, and FPGAs (Field-Programmable Gate Arrays). The CPUs will consist of 
multiple processing cores. The GPUs will be associated with programs that use the processor for general-purpose computing 
(hence, GPGPU, general-purpose computing on graphical processing units). The FPGAs have configurable hardware and are useful 
if one wants to implement hardware features that are not available in CPUs or GPUs (e.g. low precision arithmetic).

Memory in an HPC cluster is typically distributed between compute nodes, and shared within a compute node. With shared 
memory all processing units can directly access the memory of the node that they are on. Combining properties from both, 
with NUMA (Non-Uniform Memory Access) memory access time will depend on the location of the memory relative to the 
processor. It is typical to use a high-speed interconnect between the computer nodes. This can include Gigabit Ethernet (1 
or 10 Gbit) or InfiniBand.

Among the compute nodes housed in the chassis one will serve as a "management node". This is where the job scheduler will 
determine when tasks are run, receiving information from resource daemons, running on the compute nodes, that update the 
scheduler. It is also the place where system operators do a lot of their work, monitoring the system as a whole or building 
software, etc. 

Users will access the system through one or more login nodes. It is here that they will find access to their data files, job 
submission scripts, or their own programs. These will typically be accessed as mount points to other hardware. These mount 
points provide a global file system that is available on all nodes of the cluster; this is especially convenient as it means 
that files can be accessed directly on all nodes.

Note that other systems will have their own special dedicated nodes; as NCI's Gadi for example, there is a version of disk 
nodes, that access global file systems, and special nodes for data movement, or visualisation. The distinction between 
login, management, and compute nodes is typically the bare minimum that one will encounter.

A job submission script is simply a text file of instructions to the scheduler on what resources are requested, followed by 
the commands that the user wants to run. This is usually submitted on the login node, with the information going to the 
scheduler, which then determines when the job can be run. When the job runs, it occupies resources from one or more compute 
nodes, making use of the data resources specified, and when it concludes, writing output.

Login nodes do represent a bit of a bottle-neck in the architecture. Therefore it is very important that users make use of 
the job-submission system. DO NOT RUN JOBS ON THE LOGIN NODE.

