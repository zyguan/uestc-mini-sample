TEXS := $(shell find ch -name '*.tex')

.PHONY: build clean count

build: thesis.tex ch/references.bib $(TEXS)
	latexmk -xelatex $<

clean:
	latexmk -C

count:
	texcount $(TEXS)
