library(shiny)
library(Elbo)

shinyServer(function(input, output) {
    output$stick <- renderPlot({
        stickyplot(face=tolower(input$face),
               gender = tolower(input$gender),
               arms=tolower(input$arms))
    })
})