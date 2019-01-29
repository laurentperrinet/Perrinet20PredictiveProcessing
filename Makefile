default: doc markdown

SRC=Perrinet19PredictiveProcessing

markdown:
	pandoc -f markdown $(SRC).md -t docx --bibliography=$(SRC).bib -o README.md

doc:
	pandoc -f markdown $(SRC).md -t docx --bibliography=$(SRC).bib -o $(SRC).doc

pdf:
	pandoc -f markdown README.md -t latex --bibliography=$(SRC).bib -o $(SRC).pdf
