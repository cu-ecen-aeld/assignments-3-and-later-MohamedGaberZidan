hello : hello.o
	cc hello.o -o hello
hello.o : hello.c
	cc -c hello.c -o hello.o
hello.c:
	echo "int main() { return 0; }" > hello.c # Runs first

