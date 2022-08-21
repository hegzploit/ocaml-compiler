.PHONY: clean
clean:
	rm -f *.o
	rm -f *.cm*
	rm -f *.asm

stackml: stackml.o
	ld stackml.o -o stackml

stackml.o: stackml.asm
	nasm -f elf64 stackml.asm -o stackml.o

stackml.asm: stackml.ml
	./stackml > stackml.asm

stackml.ml: main.ml
	ocamlopt main.ml -o stackml