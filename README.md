# 📊 Quarto Demo Project

This project contains Quarto examples used in [the lecture](https://selinazitrone.github.io/tools_and_tips/sessions/13_quarto-2.html).

If you use R Studio, make sure to open the entire project by double clicking on the `quarto_demo.Rproj` file.

---

## 🛠️ Installation Requirements

If you want to run all examples, you need the following software and packages:

### 📦 R Packages

```r
install.packages(c("tidyverse", "kableExtra", "plotly", "quarto"))
```

### 🐍 Python Libraries

```python
pip install pandas plotnine
```

### 📄 PDF Output

PDF output requires a LaTeX installation ([TinyTeX](https://quarto.org/docs/output-formats/pdf-basics.html) recommended).
I am not sure if it gets bundled with Quarto in Positron/RStudio. If you get an error message
about a missing LaTeX installation, you can install TinyTeX with:

```cmd
quarto install tinytex
```

### ⚙️ Quarto CLI

Although you can use Quarto within Positron/RStudio, I recommend also installing the Quarto CLI
so you can also use the command line features. Download and install it from the
[Quarto website](https://quarto.org/docs/get-started/).

---

## 📁 Project Structure

To render a `.qmd` document from the project:

- Click the "Render" button in Positron/RStudio
- Or use the command line: `quarto render filename.qmd`
- Or programmatically: `quarto::quarto_render("path/to/file.qmd")`

Also checkout the R script `R/quarto_render.R` for examples of rendering multiple documents.

### 📁 document_step_by_step

Step-by-step examples showing the progression of building a document (the files I use in the lecture):

| File | Description |
|------|-------------|
| `1_penguins_text.qmd` | **Markdown Basics** - Simple document with text formatting, headers, lists, and basic markdown syntax |
| `2_penguins_code.qmd` | **Adding Code** - Integrating R code chunks with markdown text |
| `2b_penguins_code_comments.qmd` | **Code Chunk Options** - Using code chunk options |
| `3_penguins_yaml.qmd` | **YAML Headers** - Configuring multiple output formats (HTML, PDF, Word) with different options |

### 📁 documents

More advanced examples:

| File | Description |
|------|-------------|
| `penguins_complex.qmd` | **Advanced Features** - Cross-references, citations, bibliographies, and more complex formatting and markdown |
| `fancy_html.qmd` | **HTML-specific Features** - Enhanced tables with kableExtra, interactive plots with plotly |
| `penguins_python.qmd` | **Python Integration** - Using Python code in Quarto documents |
| `penguins_params.qmd` | **Parameterized Reports** - Creating dynamic reports with parameters |

### 📁 presentations

Presentation examples:

| File | Description |
|------|-------------|
| `penguin_presentation1.qmd` | **Basic Presentations** - Creating slideshows with multiple output formats |
| `penguin_presentation2.qmd` | **Advanced Presentations** - Custom themes, transitions, incremental content |
| `rladies_style.scss` | **Custom Styling** - SCSS stylesheet for customizing presentation appearance |

### 📁 R

R scripts that can be used in combination with Quarto documents:

| File | Description |
|------|-------------|
| `quarto_render.R` | **Render Quarto documents from R** - Shows simple rendering and batch rendering of multiple documents |

---

## 📚 References

You will find everything you need on the [official Quarto website](https://quarto.org/).
They have really good tutorials for all combinations of programming language, IDE and output format.

- [Quarto Documentation](https://quarto.org/docs/guide/)
- [Quarto Gallery](https://quarto.org/docs/gallery/) - Example documents and presentations
- [Quarto Tips & Tricks](https://mine-cetinkaya-rundel.github.io/quarto-tip-a-day/) - Daily quarto tips
