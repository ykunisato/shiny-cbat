# Base image
FROM rocker/shiny:latest

# Rpackages
RUN R -e "install.packages(c('zip', 'markdown', 'remotes'), repos='http://cran.rstudio.com/')"
RUN R -e "remotes::install_github('cba-toolbox/cbat4r')"