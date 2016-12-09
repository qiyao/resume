all: resume.pdf resume.ps

%.pdf: %.tex
	pdflatex $<

%.ps: %.dvi
	dvips -o $@ $<

%.dvi: %.tex
	latex $<; latex $<
clean:
	rm -f *.log *.aux
	rm -f *.ps *.pdf *.dvi

