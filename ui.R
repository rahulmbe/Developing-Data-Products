library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('mtcars Regressions'),
    sidebarPanel(
        h3('Documentation'),
        h4('This apps facilitates the use to interactively regress mpg on another variable of the mtcars dataset. You can for example select the variable wt (weight) which will result in a regression of mpg on weight. After selecting your variable at the right a plot is shown of these two variables including the regression line through these points. Under this plot the coefficients of the regression are given. Next you can change the value of mpg in the slide bar. The model is next applied to this value to predict the value of the variable you selected for this value of mpg. In the plot this is also seen by two lines and the red dot (the prediction). Furthermore it must be noted that the coloring of the datapoitns is done according to the cyl variable, the number of cylinders. Have fun!'),
        
        h3('What variable do you want to have regressed on miles per gallon?'),
        selectInput('ycol', 'select your variable', names(mtcars)),
        sliderInput('value','Use this mpg value to predict your previously selected variable',10,
                     min =10,max=45,step=1)
      ),
    mainPanel(
        plotOutput('plot1'),
        h3('Coefficients of regression:'),
        verbatimTextOutput("coefs"),
        h3('Predicted miles per gallon based on the value of your variable'),
        verbatimTextOutput("predictionoutput")
    )
))
