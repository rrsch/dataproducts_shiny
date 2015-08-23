library(shiny)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  # Expression that generates a plot of the distribution. The expression
  # is wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically 
  #     re-executed when inputs change
  #  2) Its output type is a plot 
  #
  output$distPlot <- renderPlot({
    
    library(ggplot2)
    obs<-100
    df <-10
    lim <- 2
    #par(mfrow=c(2,2))

    # for(i in 1:4) 
    {
      x <- rnorm(obs, sd=input$x_std_dev)
      y <- rnorm(obs, sd=input$y_std_dev)
      dat<-data.frame(x,y)
      ggplot(dat, aes(x=x, y=y)) + geom_point(shape=1) +  
          geom_smooth(method=lm) + coord_cartesian(xlim = c(-1*lim, lim), ylim = c(-1*lim, lim) ) 
    }
  
    
    })
})
