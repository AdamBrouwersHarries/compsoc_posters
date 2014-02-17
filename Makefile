TEX_FILES = $(wildcard *.tex)
PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))
AUX_FILES = $(patsubst %.tex,%.aux,$(TEX_FILES))

%.pdf: %.tex
	xelatex $(patsubst %.pdf,%.tex,$@)
	rm -f *.log *.aux *.blg *.bbl *.fdb_latexmk *.fls

all: $(PDF_FILES)

clean:
	rm -f *.pdf *.log *.aux *.blg *.bbl *.fdb_latexmk *.fls
