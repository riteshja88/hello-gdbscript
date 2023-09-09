set pagination off
set logging file gdb.output
set logging on
set confirm off

printf "========= start ======\n"

set $I = 0
while $I < 10
#	p $I
	printf "i=%5d, x.a=%5d, x.b=%5d\n",$I,x[$I].a,x[$I].b
	set $I = $I + 1
end

printf "========= end ====== \n\n"

set logging off