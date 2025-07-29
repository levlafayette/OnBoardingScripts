**Copying Files Between Systems**

To copy files to between systems desktop use SCP (secure copy protocol) or SFTP (secure file transfer protocol), combining 
the ssh and cp functionality. The -r option, like cp, can also be used, and it follows the convention of from source to 
destination. The source or destination address should also require a remote shell login, which is another good reason to 
have an SSH config file, and passwordless SSH.

Note that the destination must be accessible on the public network. The following two examples are from a local Linux system 
copying files from the remote Spartan system to the current working directory of the local system. You wouldn't normally be 
able to copy from Spartan to your local system, you must start on the local system!

$ scp spartan:gattaca.txt .

$ scp -r spartan:IntroLinux .
 
**Synchronising Files and Directories**

The rsync utility provides a fast way to keep two collections of files "in sync" by tracking changes.  The source or 
destination address should also require a remote shell login.  The following command copies the changes of files on Spartan 
and puts them in the current working directory. However, with the update flag it only copies those where the source is newer 
than the destination and copies in archive mode (recursive, with symlinks, permissions etc). The command also has the 
verbose flag switched on, and will compress the transfer between the source and destination.

$ rsync -avz --update lev@spartan.hpc.unimelb.edu.au:files/workfiles .

Note that rsync is "trailing slash sensitive". A trailing / on a source means "copy the contents of this directory". Without 
a trailing slash it means "copy the directory".

Rsync can be used in a fully synchronize mode with the --delete flag.  Consider this with the -n, or --dry-run options 
first, so you can see what it will do before doing it!

The first command will synchronize, absolutely, whereas the second one will synchronize, but keep older files.
 
$ rsync -avz --delete source/ username@remotemachine:/path/to/destination

$ rsync -avz --update source/ username@remotemachine:/path/to/destination
