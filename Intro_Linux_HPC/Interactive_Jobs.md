**Interactive Jobs**

Interactive jobs as useful for real-time results and testing. The resource allocations are made as part of the job submission. Job submission 
is carried out with sinteractive, rather than sbatch, but the criteria is the same.

Example interactive job for one node and two tasks for 15 minutes

`sinteractive --nodes=1 --ntasks-per-node=2 --time=0:15:0`

An example multi-threaded application is in `/apps/examples/Interactive`. Read the source file, iterate.c, for instructions. Run it 
single-threaded and multi-threaded.

Example interactive job with X-windows forwarding, after loggin in with secure X-windows forwarding. Note that X-windows forwarding is not 
highly recommended; try to do compute on Spartan and visualisation locally. However if one absolutely has to visualise from Spartan, the 
following can be used.

```
ssh <username>@spartan.hpc.unimelb.edu.au -X
sinteractive --x11=first
xclock
```

If the user is not using a Linux local machine they will need to install an X-windows client, such as Xming for MS-Windows or X11 on Mac OSX 
from the XQuartz project.

If you are running interactive jobs on GPU partitions you have to include the appropriate QOS commands or account, such as the following 
examples:


`sinteractive --x11=first --partition=gpu-a100-short --gres=gpu:1`

`sinteractive --x11=first --partition=deeplearn --qos=gpgpudeeplearn --gres=gpu:1`
 

