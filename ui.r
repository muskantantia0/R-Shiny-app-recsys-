library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Movie Recommendation Engine"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("select",label="enter the name",value=""),
      selectInput("var", "Select the Top movies",c("Top1","Top2","Top3")),
      submitButton("Recommend")),
    
    # Show a plot of the generated distribution
    mainPanel(h3("You May Like These Movies Too!"),
              #textOutput("text1"),
              #textOutput("text2"),
              #textOutput("text3"),
              textOutput("text4"),
              imageOutput("image"),
              div(style="display:inline-block",imageOutput("preImage")),
              div(style="display:inline-block",imageOutput("preImage1")),
              div(style="display:inline-block",imageOutput("preImage2"))
              
    )
  )
))


