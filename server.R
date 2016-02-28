library(shiny)
library(UsingR)
data(galton)

shinyServer(
        function(input, output) {
                output$NewTriangle <- renderPlot({
                        x <- c(-0.5, 0, 1, 1, 1.5); y <- c( 0, 0, 2, 0, 0)
                        plot(x, y, lwd = 3, frame = TRUE, type = "l")
                        title(main = "Calculating the Area of a Right Triangle")
                        theta <- atan(2/1) #calculate the angle
                        xVal <- input$XValue
                        yVal <- tan(theta) * xVal
                        polygon(c(0, xVal, xVal, 0), c(0, 0, yVal, 0), lwd = 3,
                                col = "salmon")
                        area <- 1/2 * xVal*yVal
                        text(-.25, 1.75, paste("X Value = ", xVal))
                        text(-.25, 1.65, paste("Y Value = ", yVal))
                        text(-.25, 1.55, paste("Area = ", round(area, 2)))
                })

        }
)
