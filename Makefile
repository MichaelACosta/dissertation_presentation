LATEX = pdflatex
BIBTEX = bibtex
RM = rm -f
FILE = dissertation

all: compile
	
compile: $(FILE).tex
	$(LATEX) $(FILE)
	#$(BIBTEX) $(FILE)
	#$(LATEX) $(FILE)
	$(LATEX) $(FILE)

show: $(FILE).pdf
	xreader $(FILE).pdf	

clean:	
	$(RM) $(FILE).aux $(FILE).nav $(FILE).snm $(FILE).vrb $(FILE).log $(FILE).out $(FILE).ps $(FILE).pdf $(FILE).toc $(FILE).dvi $(FILE).lof $(FILE).bbl $(FILE).lot $(FILE).blg *~ *backup
