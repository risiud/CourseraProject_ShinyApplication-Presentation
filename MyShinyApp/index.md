---
title       : Calculating the Area of a Sub-Triangle
subtitle    : Given a Larger Triangle
author      : D Risius
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Purpose and Overview

1. The purpose of this presentation is to explain the accompanying Shiny Application.
2. The application takes the input of a triangle with base 1 unit and height 2 units (area = 1 unit squared).
3. Next the user specificies a sub-triangle within the given triangle.
4. The application plots the triangle and also returns the height and area of the new triangle.
5. The application is located at the following site: https://risiud.shinyapps.io/myShinyApp/

--- .class #id 

## Problem

* Imagine that we carry items up to the top of a steep hill that is two units high and one unit long (really steep).  Since the items are really heavy and we will be taking breaks, we would like to know our progress each time we stop. We a device that tells us the horizontal distance travelled. We would like to know two things.
* The vertical distance travelled.
* The area of the hill we have already covered (proportion of the hill completed).

--- .class #id

## Visualization

* The plot below shows the R code and the plot that is given in the application.
* The code takes an input from the user for the desired X Value.  In the code we use xVal = 0.75.


```r
x <- c(-0.5, 0, 1, 1, 1.5); y <- c( 0, 0, 2, 0, 0)
                        plot(x, y, lwd = 3, frame = TRUE, type = "l")
                        title(main = "Calculating the Area of a Right Triangle")
                        theta <- atan(2/1) #calculate the angle
                        xVal <- 0.75
                        yVal <- tan(theta) * xVal
                        polygon(c(0, xVal, xVal, 0), c(0, 0, yVal, 0), lwd = 3,
                                col = "salmon")
                        area <- 1/2 * xVal*yVal
                        text(-.25, 1.75, paste("X Value = ", xVal))
                        text(-.25, 1.65, paste("Y Value = ", yVal))
                        text(-.25, 1.55, paste("Area = ", round(area, 2)))
```

![plot of chunk unnamed-chunk-1](assets/fig/unnamed-chunk-1-1.png)

--- .class #id

## Conclusion
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

The application to calculate the area of a sub-triangle is a helpful and useful visualization tool. It allows the user to visualize a triangle and calculate the area.

