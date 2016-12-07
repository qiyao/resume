PRE=resume 

all: $(PRE).pdf $(PRE).ps

%.pdf: %.tex
	pdflatex $<

%.ps: %.dvi
	dvips -o $@ $<

$(PRE).dvi: $(PRE).tex
	latex $(PRE); latex $(PRE)
clean:
	rm -f *.log *.aux

fresh: clean
	rm -f *.ps *.pdf *.dvi

