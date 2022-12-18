FROM bgendron/r421_m1:version1

RUN R -e "devtools::install_github('B-Gendron/lunglog')"

RUN R -e "install.packages(c('DT', 'markdown', 'knitr'))"

WORKDIR /home/app

COPY app .

EXPOSE 3838

CMD R -e "shiny::runApp('/home/app')"
