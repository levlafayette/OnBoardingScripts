The Online Manual

The total number of commands available on any given *nix system numbers hundreds or thousands, depending on what has been 
installed, and then there is numerous options. How are you supposed to remember them all and what they do? The short answer 
is that you're not going to. What you will learn here, and in the advanced course, is about fifty or so that will be 
sufficient for nearly everything you want to do.

To make things easier, Linux also comes with an online manual of the system, available through the man (manual) command. The 
output of man provides a terse but information-rich description of a command and its options, and can be navigated through 
arrow-keys or the space-bar for page-by-page output. Man pages can be exited with the 'q' character. These documents can be 
searched with the '/' command, followed by the search term.

A more verbose help source is the info command, which typically gives some examples of the command in practice. Further, 
there is a whatis command which provides the output of the command from the short description included in the man page. The 
apropos command (also, man -k) provides a search of the man pages where the specified command appears.

Try the following commands on Spartan:

$ man ls
$ info ls
$ whatis ls
$ man -k compiler
$ apropos compiler
$ man man

