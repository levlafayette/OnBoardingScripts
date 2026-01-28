**Multicore Jobs**

With the Slurm workload manager, there are two types of multicore jobs. Those that run different tasks with distributed memory (i.e., MPI 
applications) are expressed as different tasks and the directive `#SBATCH --ntasks=$x` is used. Those that run multiple threads in a shared 
memory model, but a single task (e.g., OpenMP applications) will use just one task, but will also have the directive `#SBATCH 
--cpus-per-task=$X`, which can be increased to the maximum number of cores on the node. The application Admixture, which calculates maximum 
likelihood estimation of individual ancestries from multilocus SNP genotype datasets, is an example of a multithreaded application.

It is important realise that an application must be written and compiled to make use of multicore capability. Slurm allocates the resources 
that an application can use, it doesn't mean that the application can or will automatically use them! If you throw multiple cores at a 
single-threaded application that just means that one core will do the work and the others will sit idle.

```
$ cat /apps/examples/ADMIXTURE/2022ADMIXTURE-test.slurm 
#!/bin/bash
# To give your job a name, replace "MyJob" with an appropriate name
#SBATCH --job-name=2022ADMIXTURE-test.slurm
# Run with two threads
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=2
# set your minimum acceptable walltime=days-hours:minutes:seconds
#SBATCH -t 0:15:00
# Specify your email address to be notified of progress.
# SBATCH --mail-user=youremailaddress@unimelb.edu.au
# SBATCH --mail-type=ALL
# Load the environment variables
module purge
module load ADMIXTURE/1.3.0
# Untar sample files, run application
# See admixture --help for options.
tar xvf hapmap3-files.tar.gz
admixture -j2 hapmap3.bed 1
##DO NOT ADD/EDIT BEYOND THIS LINE##
##Job monitor command to list the resource usage
my-job-stats -a -n -s
```
