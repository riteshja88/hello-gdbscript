all:
	gcc -g a.c
	./a.out &
	gdb -p `pidof a.out`

display:
	cat gdb.output

clean:
	rm -f a.out gdb.output
