library(shiny)

# Define UI to Predict Car Mileage (Miles per Gallon, "MPG")
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Car Mileage, Miles per Gallon, MPG"),
  fluidRow(
      column(3, wellPanel(
            sliderInput("inSliderWeight", "Weight (1000 lbs)",
                  min = 1, max = 5.5, value = 2.5),
      sliderInput("inSliderDisp", "Displacement in cu.inches)",
                  min = 50, max = 500, value = 275),
      sliderInput("inSliderCylinder", "Number of cyliners",
                  min = 4, max = 8, value = 6),
      sliderInput("inSliderHP", "Engine Gross Horsepower",
                  min = 50, max = 400, value = 300),
      sliderInput("inSliderRearAxle", "Rear axle ratio",
                  min = 2.5, max = 5, value = 3)
      
      
      )),
      
      
    
    column(3, wellPanel(
      
      sliderInput("inSliderMT", "1/4 Mile Time",
                  min = 10, max = 25, value = 20),
      sliderInput("inSliderForGear", "Number of Forward Gear",
                  min = 3, max = 5, value = 4, step =1),
      sliderInput("inSliderTrans", "Transmission 0 - Automatic 1 - Manual",
                  min = 0, max = 1, value = 0, step =1),
      sliderInput("inSliderCarb", "Number of carburetors",
                  min = 1, max = 8, value = 4, step =1)
      
      
                          
    )
    ),
    column(3, wellPanel(actionButton("goButton", "Show Result")),p("  OUTPUT - CAR MPG"),verbatimTextOutput("nText"))
    
    
  )
)
)
