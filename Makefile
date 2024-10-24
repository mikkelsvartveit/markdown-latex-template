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

watch:
	fswatch -o ./content/ | xargs -n1 -I{} make pdf

latex:
	mkdir -p output
	pandoc content/*.md \
		--resource-path=content \
		--citeproc \
		--csl="assets/ieee.csl" \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--standalone \
		--output=output/paper.tex \