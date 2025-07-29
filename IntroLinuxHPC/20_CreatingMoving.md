**Creating Directories, Moving Files**

Directories can be created with the mkdir (make directory) command. In the following example, a directory called 'braf' is 
created.  Multiple directories can be created at the same time with space delimiting the separate directories (nota bene; 
why spaces in filenames can be confusing).

The mv (move) command will move (and rename) a file. There are options for -f (force), -i (interactive), and -n (no 
clobber). If more than one of these is selected only the last one is applied.

Make a single character change to the gattaca.txt file, using nano or your favourite text editor. Save the file, exit the 
application and then move the file into the newly created directory and copy it back to the Spartan HPC system (again, using 
this example, with passwordless SSH and SSH config). The following set of commands will achieve this:

$ mkdir braf
$ nano gattaca.txt
$ mv gattaca.txt braf
$ scp -r braf spartan:

The mkdir command, with the option -p, will create a path of directories. e.g.,

$ mkdir -p braf1/braf2/braf3/braf4
