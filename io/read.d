#!/usr/sbin/dtrace -s
syscall::read:
{
    @[execname] = quantize(arg0);
}

tick-10sec
{
    exit(0);
}
