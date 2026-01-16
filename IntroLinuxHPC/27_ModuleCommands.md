**Module Commands**

Because logging into the system invokes a number of modules automatically, a `module list` command will display some even if 
they haven't been loaded by the user.

Some other commands include the following:

`module help` List of switches, commands and arguments for modules 
`module avail` Lists all the modules which are available to be loaded
`module display <modulefile>` Display paths etc for modulefile 
`module load <modulefile>` Loads paths etc to user's environment 
`module unload <modulefile>` Unloads paths etc from user's environment 
`module list` lists all the modules currently loaded

There is also the `module switch <modulefile1> <modulefile2>`, which unloads one modulefile (modulefile1) and loads another 
(modulefile2).

Lmod modules also support regular expressions, e.g., `module -r avail "^python"`

There is also `module spider <modulename>`, which traverses through the system for all modules and provides a description. A 
similar command, `module overview` provides a listing of all installed software and the number of installs, but without the 
summary description.

An example of the modules in use can be carried out with the following commands. First, start with a module list, which will 
show what is loaded automatically, which includes access to the slurm submission system, and showq, a wrapper for displaying 
jobs.

Next, check which version of gcc is being used by default with `gcc --version`. This will be the system gcc. A module avail 
command with a gcc/ search will list the versions available. Load a gcc version from a module file and check the version of 
gcc version again. Run a module switch and change the module again, and again check the version, and use a module display to 
see the paths that have been added. A module purge will remove all module files, and the default environment can be 
re-established with module load spartan.
