server <- function(session, input, output) {

  gender <- eventReactive(input$make_prediction, {
    input$gender
  })

  age <- eventReactive(input$make_prediction, {
    input$age
  })

  alcohol_consuming <- eventReactive(input$make_prediction, {
    input$alcohol_consuming
  })

  smoking<- eventReactive(input$make_prediction, {
    convert2binary(input$smoking)
  })

  anxiety <- eventReactive(input$make_prediction, {
    input$anxiety
  })

  peer_pressure <- eventReactive(input$make_prediction, {
    input$peer_pressure
  })

  chronic_disease <- eventReactive(input$make_prediction, {
    input$chronic_disease
  })

  fatigue <- eventReactive(input$make_prediction, {
    input$fatigue
  })

  allergy <- eventReactive(input$make_prediction, {
    input$allergy
  })

  wheezing <- eventReactive(input$make_prediction, {
    input$wheezing
  })

  coughing <- eventReactive(input$make_prediction, {
    input$coughing
  })

  shortness_of_breath <- eventReactive(input$make_prediction, {
    input$shortness_of_breath
  })

  swallowing_difficulties <- eventReactive(input$make_prediction, {
    input$swallowing_difficulties
  })

  yellow_fingers <- eventReactive(input$make_prediction, {
    input$yellow_fingers
  })

  chest_pain <- eventReactive(input$make_prediction, {
    input$chest_pain
  })

  output$patientOutcome <- renderPrint(
    outcome(fit_logreg(preprocess_data(patients)), get_new_patient(
              gender2letter(gender()),
              age(),
              convert2binary(smoking()),
              convert2binary(yellow_fingers()),
              convert2binary(anxiety()),
              convert2binary(peer_pressure()),
              convert2binary(chronic_disease()),
              convert2binary(fatigue()),
              convert2binary(allergy()),
              convert2binary(wheezing()),
              convert2binary(alcohol_consuming()),
              convert2binary(coughing()),
              convert2binary(shortness_of_breath()),
              convert2binary(swallowing_difficulties()),
              convert2binary(chest_pain())
)))

  output$mytable <- DT::renderDataTable({
    DT::datatable(preprocess_data(patients), options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })

}
