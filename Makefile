# Makefile to install v2 branch of biblatex-sbl

TEXMFHOME = $(shell kpsewhich -var-value=TEXMFHOME)

README   = README.md
DOCFILES = biblatex-sbl.bib\
	   biblatex-sbl.pdf \
	   biblatex-sbl-handbook-examples.tex \
	   biblatex-sbl-handbook-examples.pdf \
	   biblatex-sbl-studentsupplement-examples.tex \
	   biblatex-sbl-studentsupplement-examples.pdf \
	   biblatex-sbl-blog-examples.tex \
	   biblatex-sbl-blog-examples.pdf \
	   support/biblatex-sbl-examples-preamble.tex

TEXFILES = biblatex-sbl.def \
	   sbl.bbx \
	   sbl.cbx \
	   sbl.dbx \
	   american-sbl.lbx \
	   english-sbl.lbx \

install: uninstall
	mkdir -p $(TEXMFHOME)/doc/latex/biblatex-sbl
	mkdir -p $(TEXMFHOME)/tex/latex/biblatex-sbl
	cp $(README) $(DOCFILES) $(TEXMFHOME)/doc/latex/biblatex-sbl
	cp $(TEXFILES) $(TEXMFHOME)/tex/latex/biblatex-sbl

uninstall:
	rm -rf $(TEXMFHOME)/doc/latex/biblatex-sbl
	rm -rf $(TEXMFHOME)/tex/latex/biblatex-sbl
	rm -rf $(TEXMFHOME)/makeindex/biblatex-sbl

