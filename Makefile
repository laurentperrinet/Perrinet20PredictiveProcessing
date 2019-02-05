default: doc markdown

SRC=Perrinet19PredictiveProcessing

OPTIONS=-f markdown+tex_math_dollars+smart --standalone --mathjax --filter pandoc-crossref --filter pandoc-citeproc  --bibliography=$(SRC).bib

markdown:
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).doc

#  --template mytemplate.latex
pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex  -o $(SRC).pdf
