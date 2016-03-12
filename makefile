
all: note

pynote: tabella1.tex
	rm -rf pythontex-files-note
	rm note.pytxcode
	pdflatex -interaction nonstopmode -draftmode note.tex
	pythontex note.tex
	pdflatex note

note: algoritmi.tex numeri.tex hardware.tex note.tex
	latexmk -pdf note
	 

clean:
	rm -f *.log *.aux note.pdf *.toc *.out
