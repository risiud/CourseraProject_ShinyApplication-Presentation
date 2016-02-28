library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Triangular Probability"),
        sidebarPanel(
                sliderInput('XValue', 'Set the X Value',value = .75, min = 0, max = 1, step = 0.1,)
        ),
        mainPanel(
                plotOutput('NewTriangle')
        )
))
