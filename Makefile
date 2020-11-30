default: html pdf

SRC=Perrinet20PredictiveProcessing

# OPTIONS=-F pandoc-crossref -F pandoc-citeproc -f markdown+tex_math_dollars+smart+implicit_figures --standalone --mathjax --bibliography=$(SRC).bib
OPTIONS= --toc --standalone --filter pandoc-crossref  --bibliography ~/github/perrinet_curriculum-vitae_tex/LaurentPerrinet_Publications.bib --bibliography $(SRC).bib -f markdown+tex_math_dollars+smart+implicit_figures --mathjax  --citeproc --csl ieee.csl

edit:
	atom Perrinet20PredictiveProcessing.md
install:
	# https://pandoc.org/installing.html
	brew install pandoc
	# http://lierdakil.github.io/pandoc-crossref
	brew install pandoc-crossref
	# conda install -c conda-forge pandoc
	# brew uninstall pandoc-citeproc
	# conda install -c conda-forge rb-citeproc
	brew install librsvg
	# conda install -c conda-forge librsvg
	tlmgr install collection-fontsrecommended

figures_auto:
	rsvg-convert $f -f pdf -o ./$BASENAME/$(basename "$f" .svg).pdf

figures: figures/KhoeiMassonPerrinet17.png figures/PerrinetAdamsFriston14.png .git
	rsvg-convert figures/KhoeiMassonPerrinet17.svg -f pdf -d 450 -p 450 -o figures/KhoeiMassonPerrinet17.pdf
	rsvg-convert figures/KhoeiMassonPerrinet17.svg -f png -d 450 -p 450 -o figures/KhoeiMassonPerrinet17.png
	rsvg-convert figures/PerrinetAdamsFriston14.svg -f pdf -o figures/PerrinetAdamsFriston14.pdf
	rsvg-convert figures/PerrinetAdamsFriston14.svg -f png -d 450 -p 450 -o figures/PerrinetAdamsFriston14.png

html:
	pandoc $(SRC).md $(OPTIONS) -t html -o index.html

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).docx

pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf

biblio:
	pandoc Perrinet20PredictiveProcessing.bib --metadata title="Bibliography" --citeproc --csl ieee.csl -s -o biblio.html
