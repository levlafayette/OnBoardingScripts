**Job Monitoring**

Another option is the Spartan-specific tool `my-job-stats` which can be launched with `my-job-stats -j $jobid -a`, which will display the 
overall CPU/GPU usage metrics for a running job since it started or with `my-job-stats -j $jobid -c` to display current CPU/GPU usage metrics 
for a running job. The my-job-stats-tool can display the individual CPUs/GPUs usage for running jobs only. For completed/failed jobs, it will 
display the overall resources utilization. The following code snippet at the end of this page can be added to a job submission script to save 
output.

 
```
##Log this job's resource usage stats###
JOBID=$SLURM_JOB_ID
if [ ! -z $SLURM_ARRAY_JOB_ID ]; then
  JOBID="${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
fi
my-job-stats -a -j $JOBID
##
```
