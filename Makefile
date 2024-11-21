# Compile a PDF from the markdown files in the content directory
pdf:
	@echo "\nCompiling PDF..."
	mkdir -p ./output
	pandoc content/*.md \
		--resource-path=content \
		--citeproc \
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
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
		--to=latex \
		--standalone \
		--output=./output/article.tex
	@echo "Finished compiling LaTeX file."
		
watch:
	@make -s pdf || true
	@echo "Watching for changes..."
ifeq ($(shell uname -s),Darwin) # Use fswatch on macOS
	@fswatch -0 ./content/ | xargs -0 -n 1 -I {} make -s pdf
else # Use inotifywait on Linux/WSL
	@inotifywait -r -m -e modify ./content/ | \
	while read file_path file_event file_name; do  \
		make -s pdf; \
	done
endif


# Count the words in the markdown files, excluding files starting with 00 or 9*
wordcount:
	@cd content && find . -name "*.md" | grep -v -E "(00|9[0-9])-" | sort | xargs wc -w
