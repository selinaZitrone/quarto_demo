# Quarto demo project

This project contains some quarto files to play with.

In the following I describe the files:

## `/documents`

- `1_penguin_paper_text.qmd`: Quarto document with Markdown text only.
- `2_penguin_paper_code.qmd`: Adding code chunks to the document.
- `2b_penguin_paper_code_comments.qmd`: Adding comments to the code chunks to change their
default behavior
- `3_penguin_paper_yaml.qmd`: Add more complex yaml header with different output formats

- `4_penguin_paper_complex.qmd`: A more advanced version of `penguin_paper` that also includes cross-referencing of figures and tables, citations and a more complex yaml header

- `fancy_html.qmd`: An example of how to create nice HTML tables and interactive plots

- `python_example.qmd`: An example with Python code

## `/presentations`

- `penguin_presentation1.qmd`: A simple presentation that can be rendered to both powerpoint and HTML (revealjs)
- `penguin_presentation2.qmd`: Includes more HTML stuff like themes, tabsets, slide transitions, ...

## `/R`

- `quarto_functionality.R`: Shows R functions that can be used with quarto package