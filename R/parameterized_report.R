# Render the Quarto document with specific parameters

quarto::quarto_render(
  input = "documents/penguins_params.qmd",
  output_file = "gentoo_report.pdf",
  execute_params = list(
    species = "Gentoo",
    min_weight = 4000,
    max_weight = 6500,
    show_raw_data = true
  )
)

# Or render all 3 species reports automatically in a loop:

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

# Or in the commandline:
# quarto render documents/penguins_params.qmd -P species:Chinstrap -P min_weight:3200 -P max_weight:4000
