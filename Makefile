default: doc markdown pdf

SRC=Perrinet19PredictiveProcessing

OPTIONS=-F pandoc-crossref -F pandoc-citeproc -f markdown+tex_math_dollars+smart+implicit_figures --standalone --mathjax  --bibliography=$(SRC).bib

edit:
	atom Perrinet19PredictiveProcessing.md
install:
	# https://pandoc.org/installing.html
	brew install pandoc
	brew install pandoc-citeproc
	brew install pandoc-crossref
	brew install librsvg
	tlmgr install collection-fontsrecommended

figures_auto:
	rsvg-convert $f -f pdf -o ./$BASENAME/$(basename "$f" .svg).pdf

figures: figures/Khoei17.png figures/PerrinetAdamsFriston14anticip.png
	rsvg-convert figures/KhoeiMassonPerrinet17.svg -f pdf -d 450 -p 450 -o figures/KhoeiMassonPerrinet17.pdf
	rsvg-convert figures/KhoeiMassonPerrinet17.svg -f png -d 450 -p 450 -o figures/KhoeiMassonPerrinet17.png
	rsvg-convert figures/PerrinetAdamsFriston14.svg -f pdf -o figures/PerrinetAdamsFriston14.pdf
	rsvg-convert figures/PerrinetAdamsFriston14.svg -f png -d 450 -p 450 -o figures/PerrinetAdamsFriston14.png

markdown:
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).docx

pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf
