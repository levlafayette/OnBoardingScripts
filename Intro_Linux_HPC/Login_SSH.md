SSH and Logins

To log on to an HPC system, you will need a user account and password and a Secure Shell (ssh) client. The SSH session 
protects the data from being hijacked by people snooping on the session, and thus collecting information such as the 
username and password. For this reason, Spartan does not permit the use of protocols such as telnet, rlogin, or ftp which 
transmit in plain-text.

Linux distributions almost always include an SSH client as part of the default installation as does Mac OS 10.x. For 
MS-­Windows users, the free PuTTY client is recommended (http://putty.org) or MobaXterm (https://mobaxterm.mobatek.net/).  

To transfer files use scp/sftp, WinSCP, Filezilla (`https://filezilla-project.org/`), or rsync. SCP can only be used for transferring files, and it is non-interactive whereas SFTP interactive commands to do things like creating directories, deleting directories and files, etc.

When logging in from the command-line, enter the username and place the domain from (e.g., ssh 
lev@spartan.hpc.unimelb.edu.au). With a GUI client the domain can be saved and user name and password is typically entered 
in a virtual terminal.

An SSH config file allows one to create aliases (i.e. shortcuts) for a given hostname.

For example, create the text file in ~/.ssh directory and enter the following:


Host *
ServerAliveInterval 120
Host spartan
       Hostname spartan.hpc.unimelb.edu.au
       User $username

Now to connect to Spartan, one only needs to type ssh spartan.

Passwordless SSH for Spartan is easier for users, automation of scripts, and is necessary for some applications. When 
logging into websites or physical machines, we are accustomed to authenticating with a username and password. This form of 
authentication has a couple of drawbacks:

* It is all based on the single factor of what you know. If what you know can be discovered or guessed, then it is easy for 
someone else to log in as you. Better security comes from layering multiple factors for authentication.

* It is less convenient to automate, allowing users to programmatically access a system in an non-interactive way.

Keypair authentication overcomes both of these issues: it adds an extra authentication factor (something you have), and it 
permits logging in without a password, which is much more convenient.

A keypair can be thought of as a lock and key (commonly known as a public key and private key respectively). Your private 
key is simply a file that you keep on your computer. Just like a lock, your public key is allowed to be visible to the 
public. Your private key must be kept secret; if anyone else ever gets a copy of your private key, they will be able to use 
it to impersonate you.

To set this up for nix system (e.g., UNIX, Linux, MacOS X) start with terminal on local* system and generate a keypair.

$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/user/.ssh/id_rsa): 
Created directory '/home/user/.ssh'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/user/.ssh/id_rsa.
Your public key has been saved in /home/user/.ssh/id_rsa.pub.
The key fingerprint is:
43:51:43:a1:b5:fc:8b:b7:0a:3a:a9:b1:0f:66:73:a8 user@localhost
Append the new public key to ~/.ssh/authorized_keys on Spartan (and enter the password, for the last time).

$ cat .ssh/id_rsa.pub | ssh username@spartan.hpc.unimelb.edu.au 'cat >> .ssh/authorized_keys'
Depending on the version of SSH being used the following might also be necessary:

Put the public key in .ssh/authorized_keys2
Change the permissions of .ssh to 700
Change the permissions of .ssh/authorized_keys2 to 640

This is somewhat more difficult on MS-Windows, requiring several steps:

1) Download additional software called PuTTYgen.
https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

2) Launch up PuTTYgen tool up. If you are on Windows 7 higher, right-click on it and select Run as Administrator.

3) Select the parameters; the default value (SSH-2 RSA) is fine.

4) Select Generate

5) Add the public key to the authorized_keys file in ~/.ssh on Spartan (create it if it doesn't exist). Ensure there are no 
unexpected line-breaks. Make sure the permissions on the file are 0644.

chmod 644 ~/.ssh/authorized_keys

6) Back on PuTTYgen save the Private Key and Public Key. Make sure to save Public Key as .txt while Private Key as .ppk.

7) Configure Putty to use that newly generated key. Start putty and go to Connection > SSH > Auth and add the locate of the 
Private Key saved previously.

8) Open Putty and login as usual. If all the steps above have been followed no password will be required.

Screenshots and a Youtube video on how to do this can be found on https://www.ssh.com/ssh/putty/windows/puttygen
