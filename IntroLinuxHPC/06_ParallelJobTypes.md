When a computer system has multiple cores, it is possible to run computational jobs in parallel. Broadly speaking, there are 
two types of parallel computation.

The first is "data-parallel" computation. In this case, one has a large number of datasets and one wishes to run the same 
computational task across all of them. When there is more than one core available the datasets can be distributed among the 
cores instead of running each one sequentially in a loop structure. These are typically applied in job arrays or shared 
memory parallel applications on a single node.

A common analogy to data-parallel computation is a "horse and cart" example. In this analogy, one imagines that they are a 
thousand years or more in the past and that they want to build a new stone structure. Back then, knapping stones was a very 
time-consuming process and often one would simply go to the ruins of an old building, collect the bricks from point A and 
move them to point B. That is the equivalent computational task.

The technology of the horse and cart represents the computational tools. One way to complete the task faster would be to 
have a bigger horse. That's like having more powerful hardware. But horses don't scale and, at a point, nor do computers. 
Another solution would be to re-arrange the load because that makes a real difference when travelling. This is like cleaning 
up code. But again, there are scaling issues; increasingly one spends more time fixing the code than gaining benefits and, 
theoretically, at least, there is an absolute limit.

Question: Assuming a good-sized horse, and some work on load-balancing, what is another solution to completing the task 
faster?

Answer: Why stop at one horse and cart? A teamster system, where the load is distributed among many horses and carts, is the 
equivalent of a data-parallel computation process.

The other type of parallel computation is "task-parallel". In this situation, there are many tasks operating independently, 
in parallel, that communicate with each other. These are typically used with distributed-memory parallel applications and 
across multiple nodes. The performance of such applications will depend on the amount and size of communication and the 
throughput of the interconnect between compute nodes. Also, the effort to create such applications is usually higher than 
for shared memory systems.

The analogy in this example is like driving a car; the eyes are performing the task of viewing the road, oncoming traffic, 
and so forth. The hands are managing steering, indicators, gear-changes, and the like. The feet move from the brakes, the 
clutch, and the accelerator. Each of these tasks is sending messages to the brain which then distributes the information as 
appropriate. The eyes see an oncoming traffic light, a message is sent to the hands and feet to drop down a gear, ease on 
the brakes, etc.

Task parallel computation is very important in simulations, such as weather forecasting, aerodynamic design, fluid 
mechanics, radiation modelling, molecullar dynamics. Imagine trying to do these tasks in serial; it just so happens that 
reality is a parallel system!
