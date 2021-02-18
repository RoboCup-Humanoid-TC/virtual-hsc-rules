LATEX_FILES=$(wildcard */*.tex)
PNG_FILES=$(wildcard img/*.png)

all: V-HSC-2021-Rules.pdf V-HSC-2021-Rules-Changes-Marked.pdf

%.pdf: %.tex
	pdflatex $^ && pdflatex $^

%.pdf: Rules-Core.tex ${LATEX_FILES} ${PNG_FILES}

clean:
	rm -rf *.aux *.log *.out *.toc
