TEX_FILES = $(wildcard *.tex)
PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))
AUX_FILES = $(patsubst %.tex,%.aux,$(TEX_FILES))

%.pdf: %.tex
	xelatex $(patsubst %.pdf,%.tex,$@)
	rm $(patsubst %.pdf,%.log,$@)
	rm $(patsubst %.pdf,%.aux,$@)
	rm $(patsubst %.pdf,%.blg,$@)
	rm $(patsubst %.pdf,%.bbl,$@)
	rm $(patsubst %.pdf,%.fdb_latexmk,$@);

all: $(PDF_FILES)

clean:
	rm -f *.pdf
