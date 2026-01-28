Spartan has a special story, which illustrates many of these concepts.

From 2011-2015 UniMelb's general-purpose cluster was called "Edward". Using the naming convention at the time, it was called 
that after King Edward of Wessex, and the system prior to that was called "Alfred". As a quirk of history, after King 
Edward, Wessex was split into competing claims, and the new system was not called Æthelstan or Ælfweard!

Instead, it was called "Spartan", a laconic comment on the financial resources available to it.  A review was conducted 
looking at the infrastructure and metrics of Edward. This is fairly normal when sourcing a new system, to find out what 
current researchers want from it, and the answers were also fairly normal - the researchers wanted more cores, more memory, 
etc.

However, when usage statistics were reviewed. it was notable that Edward was being primarily used for capacity, rather than 
capability; 76.35% of jobs from Feb 9 2015 to Feb 9 2016 were single-core, and 96.83% used only 1-4GB of memory.

Most modern HPC systems are built around a cluster of commodity computers tied together with very-fast networking. This 
allows computation to run across multiple cores in parallel, quickly sharing data between themselves as needed.

For certain jobs, this architecture is essential to achieving high-performance. For others, however, this is not the case, 
and each node can run without communicating with the others in the cluster. This class of problems often comes under the 
guise of embarrassingly parallelLinks to an external site.. That is, they can be run as independent parallel tasks by 
splitting up the data or calculation into discrete chunks. In this case, high speed networking is unnecessary, and the 
resources can be better spent on utilizing more cores to achieve high performance.

https://en.wikipedia.org/wiki/Embarrassingly_parallel

Given Edward's job profile it didn't make sense for the new system to spend a lot of money on a high-speed interconnect that 
wasn't going to be used. Instead, it was recommended to make use of the existing NeCTAR Research cloud with an expansion of 
general cloud compute provisioning and use of a smaller "true HPC" system on bare metal nodes with a high-speed 
interconnect. Spartan was not "HPC in the Cloud", a chimera HPC/Cloud hybrid. Other institutions (e.g., University of 
Freiburg) do "Cloud on HPC".

This innovative approach led to presentations in Australia, New Zealand, and several European HPC Centres, including the 
Center for Scientific Computing (CSC), Goethe University Frankfurt, High Performance Computing Center (HLRS), University of 
Stuttgart, the High Performance Computing Centre, Albert-Ludwigs-University Freiburg, the European Organization for Nuclear 
Research (CERN), Centre Informatique National de l’Enseignement Supérieur, Montpellier, and the Centro Nacional de 
Supercomputación, Barcelona, along with a presentation to the OpenStack Summit, Barcelona, on October 27, 2016. and a book 
chapter in Stig Telfer (ed), The Crossroads of Cloud and HPC: OpenStack for Scientific ResearchLinks to an external site., 
Open Stack, 2016.

http://openstack.org/assets/science/OpenStack-CloudandHPC6x9Booklet-v4-online.pdf
