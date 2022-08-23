all: README.md

SRC=types.ml template.ml answers_*.ml main.ml

main: $(SRC)
	ocamlc -o main $(SRC)

README.md: main preamble.md
	(cat preamble.md && ./main) > README.md

clean:
	rm -rf *~ *.cmi *.cmo
	rm -f main
