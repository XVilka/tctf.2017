

all: slides-bib

slides: slides_en.tex
	xelatex slides_en.tex
	xelatex $< -o slides_en.pdf
	rm -f *.aux *.snm *.toc *.log *.nax *.out
	#evince slides.pdf

slides-bib: slides_en.tex
	pdflatex slides_en.tex
	biber slides_en
	pdflatex $< -o slides_en.pdf
	pdflatex $< -o slides_en.pdf
	rm -f *.aux *.snm *.toc *.log *.naz *.out

clean:
	rm -f *.aux *.snm *.toc *.log *.nax *.out *.nav *.blg *.bcf *.bbl *.vrb
