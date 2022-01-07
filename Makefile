# Latex Makefile using latexmk

POSTERNAME=main

.PHONY: $(POSTERNAME).pdf all clean

all: $(POSTERNAME).pdf

$(POSTERNAME).pdf: $(POSTERNAME).tex
	# -lualatex                 use lualatex for processing files to pdf and turn dvi/ps modes off
	# -interaction=nonstopmode  set interaction mode
	# -shell-escape             enable system commands (required by package 'minted')
	latexmk -lualatex -interaction=nonstopmode -shell-escape $<

cleanall:
	latexmk -C
	rm -rf _minted-main/
	rm -f main.run.xml main.bbl

clean:
	latexmk -c
