```
$ sudo  make clean all display
rm -f a.out gdb.output
gcc -g a.c
./a.out &
gdb -p `pidof a.out`
hiGNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
20048: No such file or directory.
Attaching to process 20109
Reading symbols from /home/ritesh/a.out...done.
Reading symbols from /lib/x86_64-linux-gnu/libc.so.6...Reading symbols from /usr/lib/debug//lib/x86_64-linux-gnu/libc-2.27.so...done.
done.
Reading symbols from /lib64/ld-linux-x86-64.so.2...Reading symbols from /usr/lib/debug//lib/x86_64-linux-gnu/ld-2.27.so...done.
done.

Program received signal SIGTTIN, Stopped (tty input).
0x00007f8cacecb031 in __GI___libc_read (fd=0, buf=0x55875d4de670, nbytes=1024) at ../sysdeps/unix/sysv/linux/read.c:27
27      ../sysdeps/unix/sysv/linux/read.c: No such file or directory.
(gdb) source gdbscript.gdb
========= start ======
i=    0, x.a=  100, x.b= 1000
i=    1, x.a=  200, x.b=  900
i=    2, x.a=  300, x.b=  800
i=    3, x.a=  400, x.b=  700
i=    4, x.a=  500, x.b=  600
i=    5, x.a=  600, x.b=  500
i=    6, x.a=  700, x.b=  400
i=    7, x.a=  800, x.b=  300
i=    8, x.a=  900, x.b=  200
i=    9, x.a= 1000, x.b=  100
========= end ======

(gdb) q
Detaching from program: /home/ritesh/a.out, process 20109
cat gdb.output
========= start ======
i=    0, x.a=  100, x.b= 1000
i=    1, x.a=  200, x.b=  900
i=    2, x.a=  300, x.b=  800
i=    3, x.a=  400, x.b=  700
i=    4, x.a=  500, x.b=  600
i=    5, x.a=  600, x.b=  500
i=    6, x.a=  700, x.b=  400
i=    7, x.a=  800, x.b=  300
i=    8, x.a=  900, x.b=  200
i=    9, x.a= 1000, x.b=  100
========= end ======
```
