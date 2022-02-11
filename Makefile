c:
	gcc rofs.c -o rofs -Wall -ansi -W -std=c99 -g -ggdb -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -lfuse -lmagic
all: c
	./rofs -d test1 test2
	
hello: cl
	./hello -d hello_fs
cl:
	gcc hello.c -o hello -D_FILE_OFFSET_BITS=64 -lfuse
	