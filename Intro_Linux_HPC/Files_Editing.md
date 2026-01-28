**Filenames**

Linux filenames can be constructed of any characters except the forward slash, which is for directory navigation, and the 
null character. Most modern Linux filesystems have a directory limit of 255 bytes (which is 255 ASCII characters, but less 
with UTF characters) which should be ample!

Excluding the directory character is common also to MS-Windows and MacOS X - and the latter will provide a different 
directory character in the shell to what it does on the Finder, replacing the colon character with a forward-slash to 
attempt backward-compatibility with Classic Mac OS. Further, MacOS X is both case-insensitive and case-preserving.

Despite this flexibility, it is best to avoid punctuation marks, and non-printing characters (e.g., spaces). It is much 
better to use snake_case or CamelCase (technically PascalCase) instead of spaces, newlines, etc (including in job names!). 
Avoid starting files with a "." unless you want it to be hidden!

Pathnames may be absolute or relative. An absolute pathname is the complete pathname of a file or directory beginning with 
the root directory. A relative pathname begins from your working directory; it is the path of a file relative to your 
working directory.

The 'touch' command can be used to create files with no content (just metadata).

Linux is case-sensitive with its filenames (e.g., list.txt, LIST.txt lisT.txT are different).

**Files and Text Editing**

Files do not usually require a program association suffix, although you may find this convenient (a C compiler likes files 
to have .c in their suffix, for example).

The type of file can be determined with the 'file' command. The type returned will usually be text, executable binaries, 
archives, a catch-all "data" file, or "empty".

There are three text editors usually available on Linux systems on the command line. These are `nano` (1989, as 'pico'), and 
'vim' (or 'vi'), and or 'emacs' (both 1976).

The general differences are that nano is easy, vim is powerful and fast, and emacs is powerful and feature-rich. Debates 
over which editor to use are called "Editor Wars" and it's meant to be light-hearted. In this course, the use of nano is 
recommended.

Nano simply provides a screen where text can be entered, and with a set of commands invoked by Cntrl+character. A couple of 
unusual commands worth knowing is Cntrl+O to save a file ("write out") and Cntrl+X to quit ("eXit"). It is good enough for 
writing the short of short scripts that one is likely to be using for job submission. It lacks advanced features (common in 
vim and emacs) such as macros, multiple file viewing, window splitting etc.



