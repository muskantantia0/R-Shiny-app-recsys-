library(shiny)
source("D:/proj_satish sir/app1/recomm2/data/helper.r")
shinyServer(function(input, output, session) {
  
  output$text4 <- renderText({
    if(input$var=="Top1")
    {(Username(input$select))[1]}
    
    else if (input$var=="Top2")
    {
      c((Username((input$select))[1]),Username((input$select))[2])
      
    }
    else
    {
      c((Username((input$select))[1]),Username((input$select))[2],Username((input$select))[3])
    }
    
  })
  
  output$image <- renderImage({
    if(input$var=="Top1")
    {
        filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[1], '.png', sep='')))
        # Return a list containing the filename and alt text
        #filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[2], '.png', sep='')))
        list(src = filename)
        
      }
      
    
    else if (input$var=="Top2")
    {
      
      
      filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[1], '.png', sep='')))
      # Return a list containing the filename and alt text
      #filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[2], '.png', sep='')))
      list(src = filename)
      
      filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[2], '.png', sep='')))
      list(src = filename)
      
      
      }
    else
    {
      
      filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[1], '.png', sep='')))
      # Return a list containing the filename and alt text
      #filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[2], '.png', sep='')))
      list(src = filename)
      
      filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[2], '.png', sep='')))
      list(src = filename)
      filename <- normalizePath(file.path('D:/proj_satish sir/app1/www',paste(Username(input$select)[3], '.png', sep='')))
      list(src = filename)
    }
    
}, deleteFile = FALSE)

}
)

