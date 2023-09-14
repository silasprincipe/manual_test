### Process both the manual and the tutorials section
# Run from the root!

#install.packages("quarto")
library(quarto)

# optional: delete docs to clean
# fs::dir_delete("docs")

# Render each one
quarto_render("obis-manual/", as_job = F)
quarto_render("obis-tutorials/", as_job = F)

# Delete the docs/tutorial folder after post processing script
fs::dir_delete("docs/tutorial/")
