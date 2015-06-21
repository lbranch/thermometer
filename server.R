
library(shiny)
shinyServer(function(input, output) {

  output$ctemp <- renderText({ (input$inputtemp- 32) / 1.8
                              })
  output$ktemp <- renderText({ ((input$inputtemp - 32) * .55) + 273.15
  })
  
  output$img <- renderText({ ifelse(input$inputtemp< 101,"warm.jpg", "ice.jpg")
  })
                                     
  
  
  })