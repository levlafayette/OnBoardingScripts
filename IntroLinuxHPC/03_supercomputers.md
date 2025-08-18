What is a Supercomputer?

Often the terms "supercomputer" is often used alongside "high performance computer", or "cluster". There is a lot of 
overlap, but the terms are distinct. It is useful to know what those distinctions are.


Supercomputers

A "supercomputer" is any single computing system that has exceptional processing power for its time. In the past, 
supercomputers were mainframe systems. Today, all supercomputers are clusters, a network of standard server-grade systems 
connected to act as a single unit.

A popular metric for measuring performance is LINPACK. This is a linear-equation solver and very much depends on the number 
of floating-point operations per second (FLOPS) that a system can carry out, It is used by the to determine the top five 
hundred public supercomputer systems, a list that is updated twice a year.
http://top500.org/

The number #1 system is currently El Capitan at the Lawrence Livermore National Laboratory, USA.

Question: What percentage of the Top 500 computers use Linux as their operating system?
Answer: 100% of the Top500 has been Linux since November 2017.
https://www.top500.org/statistics/details/osfam/1/

Of course, a computer system doesn't just do floating-point operations. Other metrics provide a broader range of tests but 
do not give a single "at a glance" value.

For example, the HPC Challenge Benchmark tests against linear equations, matrix multiplications, sustained memory bandwidth, 
large array transpositions, random access through table updates, fast Fourier transforms, and tests of bandwidth and latency 
between system nodes. Another test, the HPCG Benchmark tests against sparse matrix calculations, memory limits, and 
interconnect performance.

High Performance Computer/High Throughput Computer

Many definitions of "high performance computer" treat it as a synonym of "supercomputer". Using a strict definition of the 
words, an HPC system is any computer system whose architecture allows for significantly above-average performance. It is 
possible (although not likely) that a computer system could be designed in a low-performance manner, but still be a 
"supercomputer". It is far more common that a system is high-performance, but is not really a "supercomputer", unless the 
marketing people say otherwise!

An example is Raspberry Pi "Supercomputer" from the University of Southhampton.
https://www.youtube.com/watch?v=Jq5nrHz9I94

Another term that is used is High Throughput Computing (HTC). This is when the system architecture is used for maximum job 
completion. HTC systems are interested in how many tasks are completed, not necessarily the speed. Whilst this might sound 
the same (because tasks are completed in a time frame) it is really a reflection of the difference between capacity ("lots 
of cores for processing") and capability ("lots of cores for complex tasks"). The latter invariably requires a high-speed 
interconnect between the compute nodes and, as an opportunity cost, that means less money for processor cores.

Clusters

Clusters are a particular type of system architecture that uses a number of standard computing units (typically rack-mounted 
servers) that are connected together with some sort of (typically fast) interconnect. Message Passing software allows for 
the entire collection to be treated as a single computing system.

In the past, supercomputers were designed with a mainframe architecture. Today they are all designed with a cluster 
architecture. The cluster model is cheaper because it uses commodity-standard components. They also have excellent 
redundancy, because if a single unit fails, that node can be marked "offline" and the rest of the system can still operate.
