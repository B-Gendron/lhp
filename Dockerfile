FROM bgendron/r421_m1:version1

RUN R -e "devtools::install_github('B-Gendron/lunglog')"
RUN R -e "install.packages('DT')"

WORKDIR /home/app

COPY app .

CMD R -e "shiny::runApp('/home/app')"
