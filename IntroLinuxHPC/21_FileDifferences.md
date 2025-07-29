**File Differences**

Following the examples provided, one will end up with multiple files in their home directory with the same name. This could 
be a problem! How does one determine which file is which?

If one's memory is good, the ls -l command will provide a timestamp of when the file was last modified.


Differences in content can be determined by the diff command. Or, with a side-by-side representation with sdiff. Note that 
diff is very important as it provides output that can act as script to the very old text editor, ed, which can then be used 
to create patch files.

Further, there is the comm command, which compares two files sorted line by line.  The first column contains lines unique to 
the first file, column two contains lines unique to the second file and column three contains lines common to both files. 
The options -1, -2, -3 will suppress the respective column.

Test the output of the following commands on Spartan:

$ ls -l  gattaca.txt braf/gattaca.txt
$ diff gattaca.txt braf/gattaca.txt
$ sdiff gattaca.txt braf/gattaca.txt
$ comm gattaca.txt braf/gattaca.txt

With diff the lines that include numbers and letters indicate the location of the differing lines in their respective files 
and what needs to be done to convert the first file into the second in ed commands.

The comm command is particularly good for lists where there is crossover between two files i.e., two sets with elements 
common to both. From the man page: "With no options, produce three-column output. Column one contains lines unique to FILE1, 
column two contains lines unique to FILE2, and column three contains lines common to both files."
