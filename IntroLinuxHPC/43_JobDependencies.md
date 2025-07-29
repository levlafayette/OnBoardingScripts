**Job Dependencies**

It is not unusual for a user to make the launch of one job dependent on another job. The most common example is when a user wishes to make the 
output of one job the input of a second job. They might launch both jobs simultaneously, but they do not want the second job to run before the 
first job has completed successfully. In other words, they want a conditional dependency on the job.

Several conditional directives to be placed on a job which are tested prior to the job being intiatied, which are summarised as after, 
afterany, afterok, afternotok, singleton (e.g., sbatch --dependency=afterok:jobid1 job2.slurm). Multiple jobs can be listed as dependencies 
with colon separated values (e.g., `sbatch --dependency=afterok:jobid1:jobid2 job3.slurm`).

Some dependency types

after:jobid[:jobid...]          job can begin after the specified jobs have started
afterany:jobid[:jobid...]       job can begin after the specified jobs have terminated
afternotok:jobid[:jobid...]     job can begin after the specified jobs have failed
afterok:jobid[:jobid...]        job can begin after the specified jobs have run to completion with an exit code of zero (see the user guide for caveats).
singleton                       job can begin execution after all previously launched jobs with the same name and user have ended. 

Adding in the jobID at launch can seem a little onerous. Fortunately there is a submission script in /usr/local/common/depend that illustrates 
the use of the dependency system. The script launches three jobs in quick succession, and captures the outputted jobID of each at launch, using 
it as input for the next job.

```
#!/bin/bash
FIRST=$(sbatch myjob1.slurm)
echo $FIRST
SUB1=$(echo ${FIRST##* })
SECOND=$(sbatch --dependency=afterany:$SUB1 myjob2.slurm)
echo $SECOND
SUB2=$(echo ${SECOND##* })
THIRD=$(sbatch --dependency=afterany:$SUB2 myjob3.slurm)
echo $THIRD
```

The jobs themselves are generic examples that have a `sleep` statement to ensure that one can see the dependency conditions with `squeue`.


#!/bin/bash
#SBATCH --job-name="myjob1"
#SBATCH --time=0-000:02:00

echo $(hostname ) $SLURM_JOB_NAME running $SLURM_JOBID >> hostname.txt
sleep 60
