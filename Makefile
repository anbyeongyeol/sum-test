#Makefile
all: sum-test

sum-test: sum.o main.o # 해당 파일들을 사용하겠다
	g++ -o sum-test sum.o main.o

main.o: sum.h main.cpp #해당 파일을 넣겠다

sum.o: sum.h sum.cpp

clean:
	rm -f sum-test
	rm -f *.o

