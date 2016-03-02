**Chapter 3 Review Questions**

**Name: Krishna Bakka**

**Course: 5143 Operating Systems**

**Date: 02 Mar 2016**




####3.4 What does it mean to preempt a process?
A process premption occurs when a current process is interrupted/halted from execution for executing another process.

####3.5 What is swapping and what is its purpose?
Swapping means moving a process from the main memory to the disk. Its primary purpose is to free up the main memory. For any reason if a process is blocked and the main memory is out of memory, the blocked process is swapped on to the disk.

####3.9 List three general categories of information in a process control block.
Process identification, processor state information, process control information.

####3.10 Why are two modes (user and kernel) needed?
In user mode, there will be limited access to the memory and only safe intructions are executed but in kernel mode, there will be no restrictions on memory access and execution. User mode prevents user from modifying OS while kernel mode enables OS for doing its work smoothly.

####3.12 What is the difference between an interrupt and a trap?
Trap is associated with the execution of the current instruction and is used for handling error or an exception condition. Whereas, an interrupt is external to the execution of the current instruction and is used a reaction to an asynchronous external event.

####3.13 Give three examples of an interrupt.
Clock interrupt, I/O interrupt, Memory fault.

####3.14 What is the difference between a mode switch and a process switch?
In mode switch a current running process is switched with other process without changing its state, while in process switch, a current running process is switched out of its running state for executing another process.
