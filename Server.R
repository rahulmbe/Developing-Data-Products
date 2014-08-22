library(shiny)

shinyServer(function(input, output, session) {
    
    Dataused <- reactive({ mtcars[, c("mpg",input$ycol)]})
    
    output$plot1 <- renderPlot({
        plot(Dataused(),
             col = mtcars$cyl,
             pch = 20,cex=2)
        abline(lm(mtcars[, c(input$ycol)]~mtcars[, c("mpg")]))
        abline(v=input$value)
        abline(h=((lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[1]+
                   (lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[2]*input$value))
        points(input$value,((lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[1]+
                               (lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[2]*input$value),col="red",pch=20,cex=4)
    })
    output$coefs <- renderPrint((lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef)
    output$predictionoutput <- renderPrint((lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[1]+
                                               (lm(mtcars[, c(input$ycol)]~mtcars$mpg))$coef[2]*input$value)
})
