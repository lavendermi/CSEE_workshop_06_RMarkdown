# This script installs the packages needed for the workshop. You only need to
# run this once assuming you don't have any of the packages installed. My
# recommendation is to run it one line at a time... just because I like to catch
# errors as they happen.
install.packages("rmarkdown")
install.packages("trackdown")

# to be able to create PDF documents we need a LaTeX distribution installed. One
# that works well across OSs is tinytex but it needs a second step to complete
# the installation. First install tinytex as usual
install.packages("tinytex")

# now run the internal tinytex installer. This can take some time to install so
# maybe grab a coffee.
tinytex::install_tinytex()

# these packages are not required for RMarkdown but we will use them in the
# code-along portion of the workshop
install.packages("tidyverse") 
install.packages("palmerpenguins")
install.packages("GGally")
install.packages("kableExtra")
# 'flextable' is used to output tables to Word
install.packages("flextable") 

