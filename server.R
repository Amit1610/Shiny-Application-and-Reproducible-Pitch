#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  ntext <- eventReactive(input$goButton, {
    12.30337-(3.71530*input$inSliderWeight)-(0.01334*input$inSliderDisp)+ (-0.11144*input$inSliderCylinder)
    + (-0.02148*input$inSliderHP)+ (0.78711*input$inSliderRearAxle)+ (0.82104*input$inSliderMT)+
      (0.65541*input$inSliderForGear)+ (2.52023*input$inSliderTrans)+ (-0.19942*input$inSliderCarb)
  })
  
  output$nText <- renderText({
    ntext()
  })
  
})
