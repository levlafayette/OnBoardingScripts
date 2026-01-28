**Copying Files to a Local System**

To get a copy of the files from an external source to your home directory, you will probably want to use the commands wget, 
git, cURL, scp, or rsync. Let's have a look at the first three; these are usually designed to be run in a project directory 
for data (wget) or programs (git). Two examples of wget are provided here; one for a single file and one for part of a 
directory structure (but not the entire site). A very simple example for a git repository.
 
$ wget https://swcarpentry.github.io/shell-novice/fig/standard-filesystem-hierarchy.svg

$ curl -O https://swcarpentry.github.io/shell-novice/fig/standard-filesystem-hierarchy.svg Links to an external site.

$ wget -r --no-parent https://swcarpentry.github.io/shell-novice/

$ git clone https://github.com/VPAC/superlinux.git
 
The wget command is a non-interactive network downloader; by "non-interactive" what is meant is that it can be run in the 
background. Some very hand options include -c (continue, for partially downloaded files), -m (mirror, for an entire 
website), -r --no-parent (recursive, no parent, to download part of a website and its subdirectories). The cURL application 
has a wider range of protocols and includes upload options, but is non-recursive.

The git clone command will make a clone of a repository (often an application) into a new directory and create new branches 
in the cloned repository. In the Spartan environment, this is often done with people wanting to compile their own software. 
Note that usually, it is best to make use of the helpdesk and module files for applications.

**Copying Files Within a Local System**

To copy a file from within a system use the `cp` command, with a specified source and destination. Common options include -r 
(recursive) to copy an entire directory, -a (archive, keep ownership and permissions, recursive), and -u (update, only copy 
if the source is newer than the destination).

The following two examples illustrate the use of the copy command, and with a couple of features from the Bash shell. The 
first is the use of tab-completion, where the shell automatically completes a command if there is only one option, or offers 
probable choices from one's command, both of which save a great number of keytrokes. The second is the use of the dot 
shortcut to represent the "current working directory".

$ cp /usr/local/common/IntroLinux/gattaca.txt .
$ cp -r /usr/local/common/IntroLinux .
