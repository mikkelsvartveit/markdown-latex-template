# Compile a PDF from the markdown files in the content directory
pdf:
	@echo "\nCompiling PDF..."
	mkdir -p ./output
	pandoc content/*.md \
		--resource-path=content \
		--citeproc \
		--csl="assets/ieee.csl" \
		--pdf-engine=xelatex \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--output=./output/article.pdf
	@echo "Finished compiling PDF."

# Compile a LaTeX file from the markdown files in the content directory
latex:
	@echo "\nCompiling LaTeX file..."
	mkdir -p ./output
	pandoc content/*.md \
		--resource-path=content \
		--citeproc \
		--csl="assets/ieee.csl" \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--standalone \
		--output=./output/article.tex
	@echo "Finished compiling LaTeX file."
		
# Listen for changes in the content directory and recompile the PDF when a file changes
watch:
	@make -s pdf || true
	@echo "Watching for changes..."
	@fswatch -0 ./content/ | xargs -0 -n 1 -I {} make -s pdf

# Count the words in the markdown files, excluding files starting with 00 or 9*
wordcount:
	@cd content && find . -name "*.md" | grep -v -E "(00|9[0-9])-" | sort | xargs wc -w