library(quarto)

# Render a document from a function (same as the Render button)
# optional: specify file name and location with `output_file`
# commandline: quarto render documents/2_penguins_paper_complex.qmd --to html
quarto_render(
  input = "documents/2_penguins_paper_complex.qmd",
  output_format = "html",
  output_file = "My_penguin_paper.html"
)

# Publish a document on quartopub
# Commandline: quarto publish quarto-pub documents/2_penguins_paper_complex.qmd
quarto_publish_doc(input = "documents/2_penguins_paper_complex.qmd", 
                   server = "quartopub.com")
