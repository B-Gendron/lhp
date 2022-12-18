FROM bgendron/r421_m1:version1

CMD R -e "devtools::install_github('B-Gendron/lunglog')"

CMD R -e "shiny::runApp('/home/app')"
