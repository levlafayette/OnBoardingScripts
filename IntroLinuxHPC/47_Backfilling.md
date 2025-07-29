**Backfilling**

Many schedulers and resource managers use a backfilling algorithm to improve system utilisation and maximise job throughout. 

When more resource-intensive (e.g., multiple node) jobs are running it is possible that gaps ends up in the resource allocation. To fill these 
gaps a best effort is made for low-resource jobs to slot into these spaces.

For example, on an 8-core node, an 8 core job is running, a 4 core job is launched, then an 8 core job, then another 4 core job. The two 4 core 
jobs will run before the second 8 core job.
