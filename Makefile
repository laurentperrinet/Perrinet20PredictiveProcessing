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

figures:
	rsvg-convert $f -f pdf -o ./$BASENAME/$(basename "$f" .svg).pdf

markdown:
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).doc

#  --template mytemplate.latex
pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf
