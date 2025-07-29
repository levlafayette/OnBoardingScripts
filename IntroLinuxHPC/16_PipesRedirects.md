Pipes and Redirects

Pipes

A very powerful operator in Linux is the pipe. The pipe is typically used to redirect the output of one command as the input 
to another for further processing. Multiple commands can be piped in sequence to develop some very specific outcomes. Pipes, 
along with redirects, are two major reasons why it is often remarked that Linux and similar operating systems provide a 
toolkit to build your own solutions to a problem in a robust and flexible manner, in comparison to other systems that 
provide pre-packaged solutions and are very inflexible and fragile.


Let's have a look at some simple pipe commands:


$ who -u | less

$ who | wc -l

The 'who -u' command shows who is logged onto a particular system, their idle time etc. On a system like Spartan this is 
often more than a single-screen of information, so piping the output of that command as the input to the 'less' command aids 
reading.

The 'who' command piped through 'wc -l' gives a count of the number of users, because 'wc' is a word count. Without any 
options it will provide characters, words, and lines. In this case, we're only interested in the number of lines.

More or Less

The 'less' command provides the text output of a file, one screenful at a time. A predecessor of the command is 'more' 
(e.g., more $filename) which did the same thing, but could only traverse the file in a scroll forward manner; less can 
scroll forwards and backward and is therefore much more use. "Less is more", as the saying goes.

(As part of UNIX culture, you will often find all sorts of puns and allusions within the operating system. It's just part of 
the personality of the people who wrote the programs)

Redirects

So far all the command examples have generated output to the terminal, also known as standard output. It is perhaps 
unsurprising to discover that sometimes we also want to save output to a file. To do this we redirect output with the '>' 
symbol.  Sometimes one will want to redirect input as well (for example, to feed data to a command and to differentiate 
between when the command options end and the input begins. In this case, the '<' redirect is used; an example of this will 
be illustrated later in this workshop.

The following are examples of redirection.


$ w > list.txt

$ wc file

$ wc < file
 
The 'w' command, a great example of brevity, is a combination of who, uptime and ps -a, in this case, redirected to the file 
list.txt

If one runs a redirect command to an existing file it will overwrite the current content. Concatenation is achieved through 
the use of '>>' symbol.

$ w >> list.txt
 

Cat

The cat command is another redirect command.

Specifically, it will concatenate files and print on the standard output. It is often used in this role to display short 
files to the terminal output - note the plural, cat can operate on multiple files simultaneously (e.g., cat file1 file2) and 
when combined with standard redirects can prepend one file with another. (e.g., cat file2 file1 >> file3).

A handy set of options to cat is cat -A which displays all of a file's non-printing characters; spaces, tabs, end-of-line 
markers, carriage returns, etc.

The cat command can also be used for short-text files and can be finished with Cntrl-D. For example:

$ cat > test
The quick brown fox jumps over the lazy dog.
^D
$ cat test
The quick brown fox jumps over the lazy dog.

In the subsequent Advanced Linux workshop knowledge of redirection will be expanded further.

 
