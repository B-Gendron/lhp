ui <- function(request){
  fluidPage(

    titlePanel("Lung Health Premonitions - v2022-0.1.0"),

    # sidebarLayout(
    #     radioButtons(inputId = "diagnosis",
    #                  label = "Select which are true amongst the following entries:",
    #                  choices = c("smoking", "yellow finger", "anxiety", "chronic disease", "anxiety", "peer pressure", "fatigue", "shortness of breath", ),
    #                  selected = "right",
    #                  inline = TRUE),
    #     hr(),
    #     helpText("Original data available at: https://www.kaggle.com/datasets/nancyalaswad90/lung-cancer"),
    #   ),

      mainPanel(
        tabsetPanel(
          # TBC
          tabPanel("patients data table", DT::dataTableOutput("mytable")),
        )
      )
    )

}
