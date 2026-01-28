**Searching for Files**

If you're searching for a file, on many systems you can use the "locate" command. This command does a look-up on the 
databases prepared by the updatedb command on a system, and can be run simply with a pattern of the filename. Another 
command, which is available, is the "whereis" command, which will output the binary, source, and manual page files for a 
specified command.

However, Spartan is a very big system with thousands of users. The "locate" command is resource-intensive. As a result, it 
is not available for users. Instead, for searching for files in your own directories, the "find" command should be used 
instead.

The "find" command is extremely powerful, with a great range of options. One can specify a search by filename or directory, 
by date and time, by size, and much more. As with all such commands, explore the options by checking the manual, "man find". 
The most common use, especially at an essentials level, is to search for a file by name. In this following example, the 
search starts from the current working directory (abbreviated by '.'), specified by name (-name), and with a search for all 
files, using the asterisk wildcard ('*") of the type ".log", resulting with:

$ find . -name "*.log"
 
**Searching within Files**

If one is search for a string of text, one of the most powerful commands is the "grep" command. This strange name is so 
popular and extensive that it was added into the Oxford dictionary in 2003 as a noun (the command) and a verb (the action). 
A popular saying, suggesting the superiority of digital and plain-text documents over printed material is "You can't grep 
dead trees".

The grep command actually comes from a set of commands in the ed text editor and stood for a sequence of commands, "global 
search" for a "regular expression", and "print to standard output". The fact that it comes from an existing program is a 
great example of code reuse - people found the functionality within ed useful in another context. Brian Kernighan gives a 
wonderful little history lesson on Computerphile on the origins of grepLinks to an external site..

The following command is grep, with the option -i for "case-insensitive", followed by the regular expression 'ATEK', which 
is encapsulated in single quotes to prevent variable expansion or shell substitution, and a search of all files in the braf 
directory. As there is no other file in that diretcory it will come back with match. Adding a file (with the touch command) 
and running it again results in the file being specified.

$ grep -i 'ATEK' braf/*
$ touch braf/file1
$ grep -i 'ATEK' braf/*

See also the examples:

$ grep -c regex $filename | counts examples of regex
$ grep -n regex $filename | identify line number

**Globbing and Ranges**

The most commonly used wildcard is everything, "*", but there is also the "?" to represent a single character. Expansion of 
these wildcards to the matched set is referred to as a "glob", and the practice as "globbing".

Searchers can also be specified by range (e.g., "[a-z]" to refer to any character between a and z, inclusive.
