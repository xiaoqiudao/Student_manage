CC=gcc
STD=-std=gnu99
BIN=school.bin
FLAG=-Wall -Werror -DDEBUG
OBJ=main.o student.o teacher.o admin.o tools.o surface.o

all:$(OBJ)
	$(CC) $(STD) -o $(BIN) $(OBJ)
	
main.o:main.c surface.h
	$(CC) $(STD) $(FLAG) -c main.c
	
student.o:student.c student.h tools.h surface.h
	$(CC) $(STD) $(FLAG) -c student.c
	
teacher.o:teacher.c teacher.h tools.h grade.h
	$(CC) $(STD) $(FLAG) -c teacher.c
	
admin.o:admin.c admin.h teacher.h tools.h surface.h 
	$(CC) $(STD) $(FLAG) -c admin.c
	
tools.o:tools.c tools.h surface.h 
	$(CC) $(STD) $(FLAG) -c tools.c
	
surface.o: surface.c surface.h admin.h teacher.h tools.h student.h
	$(CC) $(STD) $(FLAG) -c surface.c
	
clean:
	rm -rf $(OBJ) $(BIN) 
