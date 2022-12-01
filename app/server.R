server <- function(session, input, output) {

  gender_selected <- eventReactive(input$make_prediction, {
    input$gender
  })

  age_selected <- eventReactive(input$make_prediction, {
    input$age
  })

  alcohol_consuming_selected <- eventReactive(input$make_prediction, {
    input$alcohol_consuming
  })

  smoking_selected <- eventReactive(input$make_prediction, {
    input$smoking
  })

  anxiety_selected <- eventReactive(input$make_prediction, {
    input$anxiety
  })

  peer_pressure_selected <- eventReactive(input$make_prediction, {
    input$peer_pressure
  })

  chronic_disease_selected <- eventReactive(input$make_prediction, {
    input$chronic_disease
  })

  fatigue_selected <- eventReactive(input$make_prediction, {
    input$fatigue
  })

  allergy_selected <- eventReactive(input$make_prediction, {
    input$allergy
  })

  wheezing_selected <- eventReactive(input$make_prediction, {
    input$wheezing
  })

  coughing_selected <- eventReactive(input$make_prediction, {
    input$coughing
  })

  shortness_of_breath_selected <- eventReactive(input$make_prediction, {
    input$shortness_of_breath
  })

  swallowing_difficulties_selected <- eventReactive(input$make_prediction, {
    input$swallowing_difficulties
  })

  yellow_fingers_selected <- eventReactive(input$make_prediction, {
    input$yellow_fingers
  })

  chest_pain_selected <- eventReactive(input$make_prediction, {
    input$chest_pain
  })

  # test output to see if it renders something
  output$testPrint <- renderPrint(age_selected())

  output$patientOutcome <- renderPrint(outcome(get_new_patient(
                                  gender2letter(gender_selected()),
                                  age_selected(),
                                  convert2binary(smoking_selected()),
                                  convert2binary(yellow_fingers_selected()),
                                  convert2binary(anxiety_selected()),
                                  convert2binary(peer_pressure_selected()),
                                  convert2binary(chronic_disease_selected()),
                                  convert2binary(fatigue_selected()),
                                  convert2binary(allergy_selected()),
                                  convert2binary(wheezing_selected()),
                                  convert2binary(alcohol_consuming_selected()),
                                  convert2binary(coughing_selected()),
                                  convert2binary(shortness_of_breath_selected()),
                                  convert2binary(swallowing_difficulties_selected()),
                                  convert2binary(chest_pain_selected())
  )))

  output$mytable <- DT::renderDataTable({
    DT::datatable(preprocess_data(patients), options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })

}
