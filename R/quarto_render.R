# This script shows different options to render documents with quarto in R.

# ----------------------------------------------------------------------------#
# Render a single document -----------------------------------------------------
# ----------------------------------------------------------------------------#

# Render a document from a function (same as the Render button)
# optional: specify file name and location with `output_file`

# In the commandline, you would run:
# quarto render documents/penguins_complex.qmd --to html --output My_penguin_paper.html

quarto::quarto_render(
  input = "documents/penguins_complex.qmd", # path to the Quarto document
  output_format = "html", # specify output format (html, pdf, docx, ...)
  output_file = "My_penguin_paper.html" # specify output file name (optional)
)

# You can also run the quarto document containing python code
# This requires that you have python installed and configured in your system
quarto::quarto_render(
  input = "documents/penguins_python.qmd",
  output_format = "pdf",
  output_file = "My_penguin_paper.html"
)

# ----------------------------------------------------------------------------#
# Parameterized reports --------------------------------------------------------
# ----------------------------------------------------------------------------#

# Render the Quarto document once with specific parameters that are passed
# to the document

# In the commandline, you would run:
# quarto render documents/penguins_params.qmd -P species:Gentoo -P min_weight:4000 -P max_weight:6500 -P show_raw_data:true

quarto::quarto_render(
  input = "documents/penguins_params.qmd",
  output_format = "pdf",
  output_file = "gentoo_report.pdf",
  execute_params = list(
    species = "Gentoo",
    min_weight = 4000,
    max_weight = 6500,
    show_raw_data = TRUE
  )
)

# You can also render multiple reports in a loop for different species

species_list <- c("Adelie", "Chinstrap", "Gentoo")

for (species in species_list) {
  quarto::quarto_render(
    input = "documents/penguins_params.qmd",
    output_file = paste0(tolower(species), "_report.pdf"),
    execute_params = list(
      species = species,
      min_weight = 3000,
      max_weight = 6000,
      show_raw_data = TRUE
    )
  )
}
