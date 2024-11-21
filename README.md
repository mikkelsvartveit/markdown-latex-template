# Markdown template for academic writing

This is a template for writing academic papers in Markdown. It uses Pandoc to convert the Markdown files to LaTeX, and then compiles the LaTeX to a PDF. You can see the generated PDF of this template [here](https://mikkelsvartveit.github.io/markdown-latex-template/article.pdf).

## Getting started

### Running locally

This template is developed for macOS and Linux. If you're on Windows, use [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install).

You will need to install:

- [TeX Live](https://www.tug.org/texlive/)
- [Pandoc](https://pandoc.org/installing.html)
- [fswatch](https://github.com/emcrisostomo/fswatch/releases) (if you're on macOS)
- [inotify-tools](https://github.com/rvoicilas/inotify-tools/wiki) (if you're on Linux)

### Running in GitHub Codespaces

If you want to avoid installing anything on your local machine, you can use [GitHub Codespaces](https://github.com/features/codespaces) to write in a browser-based development environment.

1. Click the green "Use this template" button on the top right of this repository and create a new repository from it.

2. Go to the new repository and click the "Code" button on the top right. Select "Codespaces" and click "Create codespace on main".

Note that building the Codespace can take a while the first time you open it.

## Basic Usage

1. Write your paper in Markdown in the `content` directory. All Markdown files in the `content` directory will be compiled to a single PDF file. Check out the `content/01-main.md` file for an example of how to use different Markdown features.

2. Add your references to the `assets/bibliography.bib` file.

3. Run `make pdf` to compile the Markdown files to a PDF. The PDF will be saved to the `output` directory.

You can also use these commands:

- `make watch`: automatically recompile the PDF when you make changes to the Markdown files (requires installing fswatch if you're on macOS).

- `make latex`: output a LaTeX file instead of a PDF.

- `make wordcount`: calculate the word count across all Markdown files (except cover, appendix and references).

## Github Pages

This repository contains a GitHub Actions workflow that builds the PDF and deploys it to a public Github Pages site on every push to the `main` branch. You can see the generated PDF [here](https://mikkelsvartveit.github.io/markdown-latex-template/article.pdf).

To enable this for your own repository, go to the "Pages" tab of your repository settings, and select "GitHub Actions" as the source. Note that the generated PDF will be publically available even if your repository is private.

If you want to disable this completely, simply delete the `.github/workflows/` directory.

## Customization

### Styling and layout options

The frontmatter of the `content/00-cover.md` file contains options related to the styling and layout of the document. Here you can change things like the font size, paper size, margins, and more.

### Changing the font

To change the font, you can add your font files to `assets/fonts`. Then, you need to specify the font in the Markdown frontmatter. For example, to use the font [Source Serif 4](https://github.com/adobe-fonts/source-serif), you could add these files to the `assets/fonts` directory:

- SourceSerif4-Regular.ttf
- SourceSerif4-SemiBold.ttf
- SourceSerif4-It.ttf
- SourceSerif4-SemiBoldIt.ttf

Then, apply the font like this in the frontmatter of the `content/00-cover.md` file:

```yaml
mainfont: "SourceSerif4"

mainfontoptions:
  - Path=./assets/fonts/
  - Extension=.ttf
  - UprightFont=*-Regular
  - BoldFont=*-SemiBold
  - ItalicFont=*-It
  - BoldItalicFont=*-SemiBoldIt
```

### Changing the LaTeX template

Pandoc uses a reasonable default template for LaTeX, but if you want control over things that can't be specified in the Markdown frontmatter, you can add your own .tex file to use as a template. To get a starting point, you can run `pandoc -D latex` to print the default template, and then modify it from there. Save the file as `assets/template.tex`, and then add the `--template "assets/template.tex"` flag to the Pandoc commands in the Makefile.

### Changing the bibliography style

This repository is preconfigured with the IEEE citation style, but you can easily change it to another style. To do this, add your own .csl file to the `assets` directory, and then change the `csl` field in the frontmatter of `content/00-cover.md` to the path to your .csl file.
