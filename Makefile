default: doc markdown pdf

SRC=Perrinet19PredictiveProcessing

OPTIONS=-F pandoc-crossref -F pandoc-citeproc -f markdown+tex_math_dollars+smart --standalone --mathjax  --bibliography=$(SRC).bib

install:
	# https://pandoc.org/installing.html
	brew install pandoc
	brew install pandoc-citeproc
	brew install pandoc-crossref
	brew install librsvg
	tlmgr install collection-fontsrecommended

figures_auto:
	rsvg-convert $f -f pdf -o ./$BASENAME/$(basename "$f" .svg).pdf


figures:
	rsvg-convert Khoei17.svg -f pdf -o Khoei17.pdf
	rsvg-convert  Khoei17.svg -f png -d 450 -p 450 -o Khoei17.png
	rsvg-convert PerrinetAdamsFriston14anticip.svg -f pdf -o PerrinetAdamsFriston14anticip.pdf
	rsvg-convert PerrinetAdamsFriston14anticip.svg -f png -d 450 -p 450 -o PerrinetAdamsFriston14anticip.png


markdown: figures
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc: figures
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).doc

pdf: figures
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf
