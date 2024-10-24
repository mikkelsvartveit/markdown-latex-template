# Markdown template for academic writing

This is a template for writing academic papers in Markdown. It uses Pandoc to convert the Markdown files to LaTeX, and then compiles the LaTeX to a PDF. You can see the generated PDF of this template [here](https://mikkelsvartveit.github.io/markdown-latex-template/paper.pdf).

## Usage

1. Install [TeX Live](https://www.tug.org/texlive/), Pandoc, and fswatch.

2. Write your paper in Markdown in the `content` directory. All Markdown files in the `content` directory will be compiled to a single PDF file. Check out the `content/02-main.md` file for an example of how to use different Markdown features.

3. Add your references to the `assets/bibliography.bib` file.

4. Run `make pdf` to compile the Markdown files to a PDF. The PDF will be saved to the `output` directory.

You can also use these commands:

- `make watch`: automatically recompile the PDF when you make changes to the Markdown files.

- `make latex`: output a LaTeX file instead of a PDF.
