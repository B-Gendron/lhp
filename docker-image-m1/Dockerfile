FROM rocker/r-ver:4.2.1

RUN apt-get update && apt-get install -y \
    libglpk-dev \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    unixodbc-dev \
    wget

#RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.2.269/quarto-1.2.269-linux-amd64.deb -O /home/quarto.deb
#RUN apt-get install --yes /home/quarto.deb
#RUN rm /home/quarto.deb

RUN R -e "install.packages(c('devtools', 'tidyverse', 'janitor', 'shiny', 'targets', 'tarchetypes', 'shiny', 'testthat', 'usethis', 'rio'))"

RUN R -e "devtools::install_github('b-rodrigues/myPackage', ref = 'e9d9129de3047c1ecce26d09dff429ec078d4dae')"

CMD ["R"]