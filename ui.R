# Coursera - Developing Data Products
# Course Project - Shiny Application - Iris Dataset
# =================================================

library(shiny)
# Define UI for application
shinyUI(fluidPage(
            # Application title
            titlePanel("Developing Data Products - Course Project - Iris Dataset"),
            sidebarLayout(
                # Sidebar panel
                sidebarPanel(
                    h3("User inputs"),
                    selectInput("var", "1. Select the variable for the iris dataset", choices=
                                    c("Sepal.Length"=1, "Sepal.Width"=2, "Petal.Length"=3, "Petal.Width"=4),
                                    selected = "Petal.Length"),
                    br(),
                    sliderInput("bins", "2. Select the number of BINs for histogram", min=5, max=25, value=15),
                    br(),
                    radioButtons("color", "3. Select the color of histogram", choices=c("Green", "Red",
                                                                                         "Yellow"), selected = "Green")
                ),
                mainPanel(
                    tabsetPanel(type="tab",
                               
                                
                                tabPanel("Documentation",
                                         h3("Description"),
                                         p("This is a shiny application created as a project 
                                           submission for the Coursera Developing Data Products course."), 
                                         
                                         p("The app plots a Histogram of the Iris dataset, that is included in 
                                           the R package, based in the following choices:

                                            1) the variable chosed by the user; 

                                            2) the number of BINs; and

                                            3) the color."),
                                        
                                         p("In the Data tab, a table is showed  with the values of the variable
                                            chosed by the user"),
                                         
                                         h3("Using the application"),
                                         
                                         
                                         p("To see the histogram, select the Application Plot tab, and then select
                                            the desired inputs in the side panel on the left."),
                                         
                                         p("To see the Data, select the Data tab, and then select
                                            the desired variable in the left panel from the Iris dataset.")
                                         
                                         
                                    ),        
                                tabPanel("Application Plot", plotOutput("myhist")),  
                                tabPanel("Data", tableOutput("data"))
                    )
                            
                )
            )
        )
        
)
