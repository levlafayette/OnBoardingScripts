**Job Arrays**

Job arrays are an extremely powerful tool that allows one to launch multiple jobs simultaneously, regardless of whether the jobs themselves are 
single-threaded, multi-threaded, or multicore. With a job or batch array the same batch script, and therefore the same resource requests, is 
used multiple times. A typical example is to apply the same task across multiple datasets by using an array task variable. The following 
example submits 10 batch jobs with myapp running against datasets dataset1.csv, dataset2.csv, ...  dataset10.csv . A generic example of this 
sort is as follows:

```
#!/bin/bash
#SBATCH ­­array=1­-10
myapp dataset${Slurm_ARRAY_TASK_ID}.csv
```

Array job indices can be specified in various  ways. For example, a job array with index values between 0 and 31 with:
`#SBATCH --array=0-31`

A job array with can have comma-separated index values. For example with of 1, 2, 5, 19, 27:
`#SBATCH --array=1,2,5,19,27`

A job array with index values between 1 and 7 with a step size of 2 (i.e. 1, 3, 5, 7):
`#SBATCH --array=1-7:2`

As with all Slurm directives, the SBATCH command can be applied within the batch script or on the command line.

To convert a directory of files to include an array ID see the following example:

```
$ touch aaa.fastq.gz bbb.fastq.gz ccc.fastq.gz ddd.fastq.gz
$ ls
aaa.fastq.gz  bbb.fastq.gz  ccc.fastq.gz  ddd.fastq.gz
$ n=1; for f in *fastq.gz; do mv "$f" "$((n++))$f"; done
$ ls
1aaa.fastq.gz  2bbb.fastq.gz  3ccc.fastq.gz  4ddd.fastq.gz
```

An alternative would be to read in the files using sed. Insert the following into the job submission script immediately after the Slurm 
directives. For example;

`item=$(ls *.fastq.gz | sed -n ${SLURM_ARRAY_TASK_ID}p)`

The policy on Spartan is that the maximum non-gpu jobs in an array is 100K, and on the GPU-based partitions 500 (set by LIEF project members).

The example "folders" in `/apps/examples/Array` illustrates the use of datasets in separate folders. This example is derived from 
Compute/Calcul Canada.

See also the Octave array example in `/apps/examples/Octave` for the use of multiple files or scripts as an array.

See also the Array directory in `/apps/examples/ANSYS/RHEL7/Array/` and `/apps/examples/R/Array` for the use of folders as an array.
