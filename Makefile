default: doc markdown pdf

SRC=Perrinet19PredictiveProcessing

markdown:
	pandoc -f markdown $(SRC).md -t markdown --bibliography=$(SRC).bib -o README.md

doc:
	pandoc -f markdown $(SRC).md -t docx --bibliography=$(SRC).bib -o $(SRC).doc

pdf:
	pandoc -f markdown+tex_math_dollars $(SRC).md  --mathjax -t latex --bibliography=$(SRC).bib -o $(SRC).pdf
