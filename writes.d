#!/usr/sbin/dtrace -s
syscall::write:entry
{   @numWrites[execname] = count();
}
