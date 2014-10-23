# This shiny server file is a work-in-progress, designed
# for Johns Hopkins Data Products class.  It will ultimately try
# to teach an uninitiated adult learner the subject of Algebra.
#
# Cynthia Davies Cunha
# Johns Hopkins Developing Data Products
# October 2014
# 
library(shiny)

shinyServer(function(input, output) {
    output$text1 <- renderText({
        paste("Your equation:   ", paste(input$var, paste(input$op, paste(input$num, " = 7"))))
    })
    
    output$text2 <- renderText({
        ans <- switch( input$op,
                       "+" = 7-input$num,
                       "-" = 7+input$num,
                       "*" = 7/input$num,
                       "/" = 7*input$num)
        
        paste("Your container: ", paste(input$var, paste("=", ans)))
    })     
})
