all: table.md

SRC=types.ml template.ml answers_VST.ml main.ml 

main: $(SRC)
	ocamlc -o main $(SRC)

table.md: main
	./main > table.md

clean:
	rm -rf *~ *.cmi *.cmo
	rm -f main
