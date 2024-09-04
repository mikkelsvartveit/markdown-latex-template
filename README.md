# Markdown template for academic writing

This is a template for writing academic papers in Markdown. It uses Pandoc to convert the Markdown files to LaTeX, and then compiles the LaTeX to a PDF.

## Usage

1. Install LaTeX and Pandoc.

2. Write your paper in Markdown in the `content` directory. All Markdown files in the `content` directory will be compiled to a single PDF file. Check out the `content/02-main.md` file for an example of how to use different Markdown features.

3. Add your references to the `assets/bibliography.bib` file.

4. Run `make pdf` to compile the Markdown files to a PDF. The PDF will be saved to the `output` directory.
