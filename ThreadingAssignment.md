### 1. Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation.
  Threads2.py has two threads, lets say a and b, that works with the same global variable. They share the variable and
  update it when their respective turn has arrived. In contrast with the threads2.py, threads1.py have two threads, a 
  and b, that are not related. They dont share any common memory. They have their own individual work.

### 2. After running Thread3.py does it fix the problems that occurred in Threads2.py? What's the down-side?
  Threads3.py has fixed the problem that occurred in threads2.py. But the speed of the program has decreased because once the thread    is locked, all the instructions must be executed atomically or without any interrupt until the thread is unlocked. If it contains     any input and output operations, the process has to wait until they have finished.

### 3. Comment out the join statements at the bottom of the program and describe what happens.
  Commenting out the join statements is exiting the main program without waiting the threads spanned by it have finished their job.     Join makes the main thread wait until all other threads spanned by it have finished their job.

### 4. What happens if you try to Ctrl-C out of the program before it terminates?
  Ctrl-C is terminating the main thread abruptly. It has no effect on child threads.

### 5. Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.
 Threads4.py is printing out "that was weird", even though it is not supposed to print. This is because non atomicity of the loops in  the threads. After the sharedNumber is updated by thread-a, immediately, in some cases, the control is given to the thread-b which 
 might be executing its if condition and print statement.

### 6. Does uncommenting the lock operations clear up the problem in question 5?
 Yes, it clears up the problem because lock operation will make the processor to execute bunch of lines of code sequentially, without 
any interrupt.
