File System Hierarchy

When a user logs in on a Linux or other UNIX-like system on the command line, they start in their home directory 
/home/$username . A user's project directory is located in /data/projects/$projectID.

The directory system is like a tree, starting from the root directory "/" and with subdirectories (branches), such as /bin, 
/home. /usr etc., and further subdirectories under those.

The good people at Software Carpentry provide an excellent illustration of the standard file system hierarchyLinks to an 
external site. in UNIX-like operating systems. For those who come from a non-*nix background, it is notable that there is no 
C: drive or anything like that. Devices, included disks, are also treated with file-like characteristics:

https://swcarpentry.github.io/shell-novice/fig/standard-filesystem-hierarchy.svg

"Everything in the UNIX system is a file" (Kernighan & Pike, 1984, 41).

It is strongly recommended that users develop good file management practices, and that these are shared among members of the 
project. This includes common and easily understood naming conventions, a strong structure of directories and 
sub-directories, and have a regular backup regime!

**Latency, Bandwidth, Data Location**

When data has to travel between points on a network, this takes time. If a lot of data has to travel, either in quantity or 
the number of transactions, this will take a lot of time! Users need to be attentive to the speed and quantity of data 
transfers.


Latency is the speed of data transfer, bandwidth is the "width" of the "band" of data transfer. Using a road analogy, 
"latency" is the smoothness of the surface, "bandwidth" is the number of lanes.

Distance is a very important factor. Data for processing should be kept as close as possible to the processor. Sometimes 
this may seem inconvenient to have to transfer data to a more ideal location, but if processing time is important then it 
should be treated as a priority.

As Grace Hopper used to say: "Mind your nanoseconds!"
https://www.youtube.com/watch?v=9eyFDBPk4Yw
