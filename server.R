library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  dataset <- read.csv("data/df2.csv")
  dataset<-dataset[,2:7]
  
  output$plot <- renderPlot({
    p <- ggplot(dataset, aes_string(x=input$x, y=input$y)) + geom_point()
    if (input$color != 'None')
      p <- p + aes_string(color=input$color)
    if (input$size != 'None')
      p <- p + aes_string(size=input$size)    
#    facets <- paste(input$facet_row, '~', input$facet_col)
#   if (facets != '. ~ .')
#      p <- p + facet_grid(facets)
#   if (input$jitter)
#      p <- p + geom_jitter()
#    if (input$smooth)
#      p <- p + geom_smooth()
    print(p)
  }, height=700)
})