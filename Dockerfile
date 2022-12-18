FROM bgendron/r421_m1:version1

CMD R -e "devtools::install_github('B-Gendron/lunglog')"

WORKDIR /home/app

COPY app .

CMD R -e "library(lunglog)"

CMD R -e "shiny::runApp('/home/app')"
