default: doc markdown

SRC=Perrinet19PredictiveProcessing

OPTIONS=-f markdown+tex_math_dollars  --smart --standalone --mathjax --filter pandoc-crossref --filter pandoc-crossref  --bibliography=$(SRC).bib

markdown:
	pandoc $(OPTIONS) $(SRC).md -t markdown -o README.md

doc:
	pandoc $(OPTIONS) $(SRC).md -t docx -o $(SRC).doc

pdf:
	pandoc $(OPTIONS) $(SRC).md -t latex -o $(SRC).pdf
