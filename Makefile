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
	rsvg-convert figures/Khoei17.svg -f pdf -o figures/Khoei17.pdf
	rsvg-convert  figures/Khoei17.svg -f png -d 450 -p 450 -o figures/Khoei17.png
	rsvg-convert figures/PerrinetAdamsFriston14anticip.svg -f pdf -o figures/PerrinetAdamsFriston14anticip.pdf
	rsvg-convert figures/PerrinetAdamsFriston14anticip.svg -f png -d 450 -p 450 -o figures/PerrinetAdamsFriston14anticip.png


markdown:
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).doc

pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf
