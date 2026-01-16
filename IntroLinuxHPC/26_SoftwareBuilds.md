**Software Builds**

As previously mentioned application software on a HPC is typically build from source-code with specific version numbers and 
compilers. This is because building from the source-code usually provides significant improvements in performance (around 
25% to 33% is typical).

To help us build the software on Spartan we use a system called "EasyBuild" which is essentially a collection of tested 
Python scripts that goes through the process of getting the source-code, selecting a particular toolchain (that is, a 
compiler combination, e.g., GCC, Intel, Cuda, etc), selecting a particular build block and parameters, compiler options, and 
sanity checks. Another similar product that exists is called "Spack"; in the past (e.g., on Edward) system operators would 
write Bash shell scripts to automate as much of the process as possible.

A selection of these EasyBuild blocks and their options is available at the following URL

https://docs.easybuild.io/en/latest/version-specific/generic_easyblocks.html

On Spartan, a collection of the Easybuild scripts can be found at the following path:

$ /apps/easybuild-2022/easybuild/local-easybuild/

Users can access this collection if they wish to build their own custom versions of software.
