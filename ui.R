library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Standard Deviation Explorer"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(

    sliderInput("x_std_dev", 
                "X Std Dev:", 
                min = 0.01,
                max = 5, 
                value = 1),
    sliderInput("y_std_dev", 
                "Y Std Dev:", 
                min = 0.01,
                max = 5, 
                value = 1),
    p("This app is designed for beginning stats students to see the effect of standard deviation on regression lines and confidence intervals."),
    p("The scatter plot at right shows (x,y) pairs from a normal distribution, using the standard deviations selected."),
    p("Question for the student: how does x SD affect the regression line?  how does the y SD affect it differently?  What about the confidence intervals?"),
    p("What settings are most and least likely to produce a horizontal line at y=0?  Minimize or maximize the interval?  And what does that tell you about the reliability of regression lines?")
    
    ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
