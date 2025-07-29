With additional finances and extra cores deployed over the years, Spartan now has returned to a more traditional layout.

The main partition is called "cascade", and the main GPGPU partition is gpu-a100.  Further, there are a number of nodes 
dedicated for interactive sessions with OpenOn Demand, short or long wall-times, bigmem nodes, and specialist partitions for 
various projects and departments that have purchased their own hardware. A summary of the nodes and their hardware can be 
found on the status_specs page.

https://dashboard.hpc.unimelb.edu.au/status_specs/

Each node is connected by high-speed 50Gb networking with 1.5 µsec latency, making this partition suited to multi-node jobs 
(e.g. those using OpenMPI). The use of a high-performance communications network enables high-speed data communication for 
parallel applications running on multiple nodes, and a high-speed connection to the disk systems in the cluster.

Spartan uses IBM Spectrum ScaleLinks to an external site. (previously known as GPFS). This is a highly scalable, parallel 
and robust filesystem. Parallel file systems are used on HPC systems because they offer a higher I/O that a classic network 
file system, including allowing several processes write to the same file. Some examples of parallel file systems include 
Spectrum Scale (aka GPFS), Panasas FS, Lustre, BeeGFS, CephFS.

https://www.ibm.com/support/knowledgecenter/en/SSFKCN/gpfs_welcome.html

The total Spartan storage into 2 areas:

Location	Capacity	Disk type
/data/gpfs	2.1PB	10K SAS
/data/scratch	525TB	Flash

User /home directories are on the University's NetApp NFS platform, backed by SSD
