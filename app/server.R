server <- function(session, input, output) {

  output$mytable <- DT::renderDataTable({
    DT::datatable(preprocess_data(patients), options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })

}
