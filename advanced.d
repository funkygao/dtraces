#!/usr/sbin/dtrace -s

syscall::connect:entry
{
    trace(execname);
    trace(cwd);
    trace(errno);
    trace(pid); 
    trace(probefunc); 
    trace(" is initiating a socket");
}
