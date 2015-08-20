
all: note

pynote: tabella1.tex
	rm -rf pythontex-files-note
	rm note.pytxcode
	pdflatex -interaction nonstopmode -draftmode note.tex
	pythontex note.tex
	pdflatex note

note: chapters.tex note.tex
	pdflatex note
	 
   
