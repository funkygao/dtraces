#!/bin/sh

# list all probes
sudo dtrace -l

# 
sudo dtrace -n syscall:::entry

#
sudo dtrace -n syscall:::entry'/pid == 31337/{ @syscalls[probefunc] = count(); }'

sudo dtrace -n syscall:::return'{trace(execname)}'

sudo dtrace -n 'syscall:::entry {trace(execname); trace(pid); trace(curthread); trace(timestamp)}'
