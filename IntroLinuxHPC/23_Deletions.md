**Deletions**

It is a feature of every user environment that one can delete files that they have permissions over. The Linux command-line 
environment is no different in this regard. However, one must be aware that at this level that the user is very close to the 
"bare metal". There is the hardware, then there is the kernel, which converts the software commands to hardware switches, 
and then there's the shell environment.

In other words, deleting files actually means deleting them! There is no "trashcan" or "recycle bin" or anything like that. 
On Spartan, we are introducing regular backups for home directories, which may recover files deleted by accident. It is 
almost certain if they were deleted on the same day that they will not be recovered. In general, by careful with deletions 
and make backups your data.

All this said, here are some examples. The first is the deletion of a single file with the "rm" (remove) command. Empty 
directories can be deleted with "rmdir" (remove directory), however the directory must be empty, that is, all the files must 
already have been removed. This may sound rather tedious, and there is a shortcut - a very dangerous one - that is to 
remove, recursively, and force ("rm -rf"). This will remove all files, all subdirectories, all files on those subdirectories 
and so forth.

One is reminded, again, to be very careful when removing files. Especially with wildcards!

Consider the difference between "rm *.bak" to "rm * .bak". The first will remove all files that have the suffix ".bk". The 
second will remove all files in a directory and then helpfully inform the user there is no .bak file to delete! Perhaps not 
what is desired!


$ rm gattaca.txt
$ rmdir braf/
$ rm -rf braf/
 
One should definitely not run rm -r .* because recursively deleting the parent directory is rarely desired.

Replace `rm` with `ls` to check what a `rm` command will delete. Then use `rm`.

Also, consider using the absolute path as an additional safety-check.
