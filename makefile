./bin/discriminant: ./obj/main.o ./obj/discriminant.o ./bin
	gcc ./obj/main.o ./obj/discriminant.o -o ./bin/discriminant -lm

./obj/main.o: ./src/main.c ./obj
	gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/discriminant.o: ./src/discriminant.c ./obj
	gcc -c ./src/discriminant.c -o ./obj/discriminant.o -Wall

./bin:  
	mkdir bin

./obj: 
	mkdir obj

.PHONY: clean
clean:
	rm -f -r bin/ obj/
