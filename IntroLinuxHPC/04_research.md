Research Computing and Reproducibility

"Research Computing" is whatever researchers do with their computer systems. It is not about high performance computing, or 
clusters, or anything like that.

However, some computing systems are better for researchers than others.

For many years HPC engineers were mainly concerned about the performance of their hardware, or aspects of the software. They 
were less interested in the user-base, real and potential. Such issues contributed to a paper by Greg Wilson, "High 
Performance Computing Considered Harmful"Links to an external site. . That had to change as the number of people requiring 
HPC performance has grown.

Both datasets and processing requirements are increasing faster than the computational performance of personal systems. As a 
result, more research now relies on HPC systems, in diverse disciplines including mathematics, the life sciences, 
engineering, astronomy, economics and finance, with numerous success storiesLinks to an external site. . There is a strong 
associationLinks to an external site. between research output and availability of HPC systems, and with and an average 
increase of profits (or cost savings) of $44 dollars per dollar invested in HPC.
https://web.archive.org/web/20151031013056/https://www.hpcuserforum.com/downloads/HPCSuccessStories.pdf
https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1679248
http://www.hpcuserforum.com/downloads/idcstudy.zip

One matter that is very important for researchers is developing good practices to ensure that the code they use and the 
computational processes are reproducible, not just to themselves but to others as well. The "Ten Years Reproducibility 
Challenge" simply asks the question of whether a researcher can reproduce the code and results of research that they did ten 
years previously. 
https://www.nature.com/articles/d41586-020-02462-7


Replication is a major assumption of the scientific method, yet, even in medicine, "Most Published Research Findings Are 
False" 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1182327/

Using consistent computing environments and datasets helps reduce this possibility, therefore it is important that all 
researchers are aware of the best practices to improve the probability of replication of findings.

This includes being very attentive to exactly what version a software package is being used, and what compiler was used to 
produce it. For example, on Spartan, we will have several versions of the R statistical programming language, produced with 
different compilers and a variety of extensions, each of which have their own different versions. Large computations 
produced with one version do not necessarily give the same results as a different version. As a result, research results 
should publish the specific versions of software that they used.
