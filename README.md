# Quarto Demo Project

This project contains Quarto examples used in [the lecture](https://selinazitrone.github.io/tools_and_tips/sessions/13_quarto-2.html).

## Installation Requirements

If you want to run all examples, you need the following software and packages:

### R Packages

```r
install.packages(c("tidyverse", "kableExtra", "plotly", "quarto"))
```

### Python Libraries (if running Python examples)

```python
pip install pandas plotnine
```

### PDF Output

PDF output requires a LaTeX installation ([TinyTeX](https://quarto.org/docs/output-formats/pdf-basics.html) recommended).
I am not sure if it gets bundled with Quarto in Positron/RStudio. If you get an error message
about a missing LaTeX installation, you can install TinyTeX with:

```cmd
quarto install tinytex
```

### Quarto CLI

Although you can use Quarto within Positron/RStudio, I recommend also installing the Quarto CLI
so you can also use the command line features. Download and install it from the
[Quarto website](https://quarto.org/docs/get-started/).

## Project Structure

### `/document_step_by_step/`

Step-by-step examples showing the progression of building a document (the files I use in the lecture):

- `1_penguins_text.qmd`: **Markdown Basics** - Simple document with text formatting, headers, lists, and basic markdown syntax
- `2_penguins_code.qmd`: **Adding Code** - Integrating R code chunks with markdown text
- `2b_penguins_code_comments.qmd`: **Code Chunk Options** - Using code chunk options
- `3_penguins_yaml.qmd`: **YAML Headers** - Configuring multiple output formats (HTML, PDF, Word) with different options

### `/documents/`
More advanced examples:

- `penguins_complex.qmd`: **Advanced Features** - Cross-references, citations, bibliographies,and more complex formatting and markdown
- `fancy_html.qmd`: **HTML-specific Features** - Enhanced tables with kableExtra, interactive plots with plotly (features specific to HTML output)
- `penguins_python.qmd`: **Python Integration** - Using Python code in Quarto documents
- `penguins_params.qmd`: **Parameterized Reports** - Creating dynamic reports with parameters (see also the R script `R/parameterized_report.R` for rendering multiple reports with different parameters)

### `/presentations/`
Presentation examples:

- `penguin_presentation1.qmd`: **Basic Presentations** - Creating slideshows with multiple output formats (RevealJS and PowerPoint)
- `penguin_presentation2.qmd`: **Advanced Presentations** - Custom themes, transitions, incremental content, tabsets, and presenter notes
- `rladies_style.scss`: **Custom Styling** - SCSS stylesheet for customizing presentation appearance (used in `penguin_presentation2.qmd`)

### `/R/`
R scripts that can be used in combination with Quarto documents:

- `quarto_render.R`: **Render Quarto documents from R** - Shows simple rendering and batch rendering of multiple documents
with different parameters, also shows the corresponding terminal commands to use


## How to Use This Project

1. Start with the step-by-step examples to understand basic Quarto concepts
2. Explore the more complex examples in the `/documents/` folder
3. Try creating your own presentations based on the examples
4. Experiment with programmatic rendering using the R scripts

To render a document:
- Click the "Render" button in Positron/RStudio
- Or use the command line: `quarto render filename.qmd`
- Or programmatically: `quarto::quarto_render("path/to/file.qmd")`

## References

You will find everything you need on the [official Quarto website](https://quarto.org/).
They have really good tutorials for all combinations of programming language, IDE and output format.


## Additional Notes


- Some advanced features may require additional packages not listed above
- The penguin dataset comes from the `palmerpenguins` package