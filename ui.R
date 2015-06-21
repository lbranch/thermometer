# ui.R
library(shiny)
shinyUI(fluidPage(
  titlePanel("Temperature Conversion"),
  
  sidebarLayout(
    sidebarPanel( 
      fluidRow(
      sliderInput("inputtemp",
                  "Farenheit Temperature:",
                  min = -10,
                  max = 300,
                  value = 32),
      br(),
      br()
      
       
      
      ) 
      
      ), 
    
    mainPanel("Converted Temperature ",
              fluidRow(
                
                
                
                column(1,
                       h4("Celcius: "),
                       h4("Kelvin: ")
                     
                       
                ),
                column(1,
                       h4( textOutput("ctemp")),
                       h4( textOutput("ktemp"))
                       
              )), 
              conditionalPanel(condition ="input.inputtemp <= 32",
                               img(src="tcold.jpg", height = 180, width = 180)                               
              ),
              conditionalPanel(condition ="input.inputtemp > 99",
                               img(src="thot.jpg", height = 180, width = 180)                               
              ),   
              conditionalPanel(condition ="input.inputtemp > 32 && input.inputtemp <= 99" ,
                               img(src="twarm.jpg", height = 180, width = 180) 
    ),
                              
                     
              fluidRow(              
                
                
                column(8,
                       h3("Instructions:"),
                       h4(  "Move the farenhiet temperature sliderbar to adjust the temperature."),
                       h4("When the temperature changes the converted temperature will be displayed"),
                       h4("in celcius and kelvin along with the relative temperature indicator")
                       )
                        
                       
                ) 
              
              )   
              
              
              )
  )
)