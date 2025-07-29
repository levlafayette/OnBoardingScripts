**A Dynamic Environment**

Environment modules provide for the dynamic modification of the user's environment via module files, such as the location of 
the application's executables, manual path, libraries, and so forth.

Modulefiles also have the advantages of being shared on many users on a system (such as an HPC system) and easily allowing 
multiple installations of the same application but with different versions and compilation options. Why would we want to do 
this?

Consider a research group using R, a mathematical and statistical programming language and collection of datasets. It does 
not help when writing a research paper that, half-way through the research, that the system installation of the R 
application is changed by the friendly local systems administrator. Recall that when a version software changes, it may 
change the results. This would mean the results may not be reproducible, even by the same research team.

On the other hand, a different research group wants a newer version of the R language installed, perhaps due to new features 
that are not otherwise available in an older version. How can the do groups co-exist on the same system? The answer is to 
have R or any other software installed multiple times for each version, and perhaps for each compiler, and even for 
different hardware (e.g., GPUs), but with different paths on the system to the different versions.

Check the current environment with the `env` (environment) command (pipe it through `less`) and one will notice the PATH 
that is included by default.
