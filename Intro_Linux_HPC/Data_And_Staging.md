**Data and Staging**

Always try to conduct your computation close to where your data is. Mind your nanoseconds! This may mean that your job submission scripts will 
require elements where you copy your data to conduct the job. Local disk is typically faster than shared disks. If you find that your 
read-writes are slow and you are making use of a lot of I/O you may need to stage your data.

Spartan has `/data` for `/home` (slower) and `/projects` (faster), `/scratch` for temporary storage data (faster), and as local disk, 
`/var/local/tmp` (fastest, not shared). A suggested data staging approach could look something like:

```
cd /projects/$PROJECTID/
cp -r $data /var/local/tmp/mydata
cd /var/local/tmp/mydata
myapp $data
cp -r /var/local/tmp/mydata /projects/$PROJECTID/$data
```

An additional reminder is provided that Spartan is not meant for long-term storage (consider using MediaFlux), the /home directory (whilst 
backed up) is limited in size, and data for processing should be in the relevant project directory.

All users should develop a data management plan and projects should assign a responsible person for that project's data. This should include:

* A regular regime of backups to a secure off-site storage facility using a rotational approach (e.g., daily, weekly, monthly, etc)
* Use of version control system for user-developed content, especially programs (e.g., github)
