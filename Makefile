pdf:
	FILES=$$(ls snippets/ | tr '\n' ',' | sed 's/,$$//'); \
	typst compile --input files="$$FILES" doc.typ docs/index.pdf