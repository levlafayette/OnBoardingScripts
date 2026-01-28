**2022 Modules**

Spartan uses LmodLinks to an external site. for its environment modules and we installed software with compiler and hardware in the module 
name. However, despite requests to the contrary, users would still mix and match modules. The system would attempt to change the invoked 
modules with varying degrees of success. So in late 2019, we introduced a new approach using compiler hierarchies, and this approach has been 
kept in the 2022 build. For what it's worth the 2019 and 2015 modules are still available, but using them is explored in the Advanced course.

With the module hierarchy system, a compiler must be invoked (if different from the default), then the application. This protects people from 
changing toolchains. The full toolchain does not have to be specified. The default compiler and toolchain is foss/2022a, which includes 
GCC/11.3.0 and OpenMPI/4.1.4

For example, if you wish to load the Gaussian module you must first load NVHPC/22.11-CUDA-11.7.0

```
[lev@spartan-login2 ~]$ module load Gaussian/g16c01-CUDA-11.7.0
Lmod has detected the following error:  These module(s) or extension(s) exist but cannot be loaded as requested:
"Gaussian/g16c01-CUDA-11.7.0"
   Try: "module spider Gaussian/g16c01-CUDA-11.7.0" to see how to load the module(s).

[lev@spartan-login2 ~]$ module load NVHPC/22.11-CUDA-11.7.0

[lev@spartan-login2 ~]$ module load Gaussian/g16c01-CUDA-11.7.0
[lev@spartan-login2 ~]$ module list

Currently Loaded Modules:
  1) slurm/latest     7) numactl/2.0.14     13) libevent/2.1.12   19) OpenBLAS/0.3.20     25) CUDA/11.7.0
  2) spartan/rhel9    8) XZ/5.2.5           14) UCX/1.13.1        20) FlexiBLAS/3.2.0     26) NVHPC/22.11-CUDA-11.7.0
  3) GCCcore/11.3.0   9) libxml2/2.9.13     15) libfabric/1.15.1  21) FFTW/3.3.10         27) Gaussian/g16c01-CUDA-11.7.0
  4) zlib/1.2.12     10) libpciaccess/0.16  16) PMIx/4.2.2        22) FFTW.MPI/3.3.10
  5) binutils/2.38   11) hwloc/2.7.1        17) UCC/1.0.0         23) ScaLAPACK/2.2.0-fb
  6) GCC/11.3.0      12) OpenSSL/1.1        18) OpenMPI/4.1.4     24) foss/2022a
```

