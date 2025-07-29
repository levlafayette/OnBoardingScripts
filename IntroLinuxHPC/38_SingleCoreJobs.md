**Single Core Jobs**

Single core jobs are actually very common on Spartan, as they were on the preceding system, Edward. Many applications are written as 
single-threaded by default. This is about using an HPC for capacity, rather than capability. A generic template would look like the following:

```
#!/bin/bash
#SBATCH ­­--time=01:00:00
# Not necessary but used for illustration
#SBATCH ­­--ntasks=1
module load my­app­compiler/version
my­app data
```

Examples of single-core jobs are available at: `/apps/examples/MATLAB` and `/apps/examples/R`, `/apps/examples/OpenFOAM`. Note that the job 
can call other scripts. and also note that Slurm has full and abbreviated directives.

The R example illustrates the use of email directives where the scheduler will send the user an email when the job starts, aborts, or finishes. 
The Slurm script invokes an R script for the leaf biomass of a North American pine in a high CO2 environment. The R script calls data files and 
outputs results in a variety of illustrative formats. With R running vanilla mode (note the redirection), it will produce a PDF which can be 
downloaded to a local system for viewing.

```
$ cat /apps/examples/R/2022RSample.slurm 
#!/bin/bash
# To give your job a name, replace "MyJob" with an appropriate nam
#SBATCH --job-name=Rsample
# For R need to run on single CPU
#SBATCH --ntasks=1
# set your minimum acceptable walltime=hours:minutes:seconds
#SBATCH -t 0:15:00
# Specify your email address to be notified of progress.
# SBATCH --mail-user=youremailaddress@unimelb.edu.au
# SBATCH --mail-type=ALL
# Load the environment variables for R
module purge
module load foss/2022a
module load R/4.2.2 
# The command to actually run the job
R --vanilla < tutorial.R 
##DO NOT ADD/EDIT BEYOND THIS LINE##
##Job monitor command to list the resource usage
my-job-stats -a -n -s
```

The MATLAB example also invokes its own script, polar-plot.m which produces a post-script graphic of a plot. MATLAB is usually a fairly 
heavy-duty application, with a resource-heavy GUI. These options are turned off when running in batch mode.

 
```
$ cat /apps/examples/MATLAB/2022matlab.slurm 
#!/bin/bash
# One task, one core, default partition, ten minutes walltime
module purge
module load MATLAB/2023a_Update_1
matlab -nodesktop -nodisplay -nosplash< polar-plot.m
##DO NOT ADD/EDIT BEYOND THIS LINE##
##Job monitor command to list the resource usage
my-job-stats -a -n -s
```
