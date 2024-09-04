pdf:
	mkdir -p output
	pandoc content/*.md \
		--resource-path=content \
		--citeproc \
		--csl="assets/ieee.csl" \
		--pdf-engine=xelatex \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--output=output/paper.pdf \
