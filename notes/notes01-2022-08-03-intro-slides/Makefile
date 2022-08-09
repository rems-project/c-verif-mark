TOP=notes01-2022-08-03-intro-slides

all: $(TOP).pdf

$(TOP).pdf: $(TOP).tex
	pdflatex $(TOP).tex

%.pdf %.pdftex_t : %.fig 
	fig2dev -L pdftex                $< $*.pdf
	fig2dev -L pdftex_t -p $*.pdf  $< $*.pdftex_t

%.pstex %.pstex_t : %.fig Makefile
	fig2dev -L pstex                $< $*.pstex
	fig2dev -L pstex_t -p $*.pstex  $< $*.pstex_t

install: $(TOP).pdf
	cp $(TOP).pdf built_doc/

clean:
	rm -rf *~
	rm -rf *.aux *.dvi *.log *.out *.nav *.snm *.toc *.vrb
	rm -rf *.pstex *.pstex_t *.bak
	rm -rf $(TOP).pdf
