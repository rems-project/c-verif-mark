all: index.md

SRC=types.ml template.ml answers_VST.ml main.ml 

main: $(SRC)
	ocamlc -o main $(SRC)

table.md: main
	./main > index.md

clean:
	rm -rf *~ *.cmi *.cmo
	rm -f main
