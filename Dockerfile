# If you are not using an M1 Apple computer, uncomment the following line and comment the next one
#FROM brodriguesco/r421_rap:version1

FROM bgendron/r421_m1:version1

# Load an additional dev library to deal with the images in the app
#RUN apt-get update && apt-get install -y libxt6

RUN R -e "devtools::install_github('B-Gendron/lunglog')"

RUN R -e "install.packages(c('DT', 'markdown', 'knitr', 'png'))"

WORKDIR /home/app

COPY app .

EXPOSE 3838

CMD R -e 'shiny::runApp("/home/app", port = 3838, host = "0.0.0.0")'
