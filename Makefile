app : lib.o main.o
	gcc -o app lib.o main.o

main.o : main.c
	gcc -c main.c

lib.o : lib.c
	gcc -c lib.c
