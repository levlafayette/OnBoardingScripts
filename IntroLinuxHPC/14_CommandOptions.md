Command Options

Commands in this environment are built with a default execution, based around a principle of "do one thing, do it well, and 
play nice with others". Commands are modular in their design, which means that they can be extended with options, with 
sanity checks to ensure that they don't contradict themselves.

Command options are expressed as <command> --<option> (full word version) or <command> -<option> (abbreviated version).

Some memorable examples:

ls -lart. List the contents of the current working directory with the options of long description (permissions, ownership, 
file-size), all (include 'dot' or hidden files), in reverse time order of modification.

ls -lash. List the contents of the current working directory with the options of long description (permissions, ownership, 
file-size), all (include 'dot' or hidden files), with their sizes as a human-readable expression.

ls -Flahrt: List the contents of the current working directory with the options of file indicator, long-listing, all files, 
human-readable size expression, and reverse time order.

date -u. Print the date in UFC format.
date -r $filename. Print the date of last modification on $filename.

Examples of ps (a snapshot of the current processes) will vary according to user. Note the lack of hyphen (an exception!). 
From the manual page: "ps -aux" is distinct from "ps aux".  The POSIX and UNIX standards require that "ps -aux" print all 
processes owned by a user named "x", as well as printing all processes that would be selected by the -a option.  If the user 
named "x" does not exist, this ps may interpret the command as "ps aux" instead and print a warning.

[lev@spartan-login1 ~]$ ps afux
[root@spartan-login1 ~]# ps afux | less
