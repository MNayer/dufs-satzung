all:
	cd src/latex/; echo "Entering src/latex/"; \
		pdflatex -shell-escape main.tex; \
		bibtex main.tex; \
		pdflatex -shell-escape main.tex; \
		pdflatex -shell-escape main.tex; \
		mv main.pdf ../../main.pdf
		
clean:
	cd src/latex/; echo "Entering src/latex/"; \
		rm *.aux; \
		rm *.log; \
		rm *.toc; \
		rm *.acn; \
		rm *.bcf; \
		rm *.glo; \
		rm *.ist; \
		rm *.out; \
		rm *.xml; \
		rm *.lot; \
		rm *.bbl; \
		rm *.blg; \
		rm -r _minted-main; \
		rm \[.*
