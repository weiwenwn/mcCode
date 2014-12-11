library(googleVis)
library(shiny)

mmmm = read.csv("gvisplot資料.csv", header=T)
mmmm = mmmm[,-1]

a = paste("2008_HS3+"
      ,", ","2008HS"
      ,", ","2100XP"
      ,", ","2008(XP)"
      ,", ","KB-3100"
      ,", ","2008_HS3"
      ,", ","2100SD"
      ,", ","AD838"
      ,", ","2008XP3"
      ,", ","AD8312"
      ,", ","DB-730AC"
      ,", ","DB-730H"
      ,", ","DB-730H+",sep="")

shinyServer(function(input, output) {
   datasetInput <- reactive({
     switch(input$dataset,
            "data" = mmmm)
     })
  
     output$view <- renderGvis({
       gvisScatterChart(datasetInput()
                        ,options=list(
                          title=a,
                          vAxis="{title: 'UPH'}",
                          hAxis="{title: 'mcType'}"
                                     )
                        )
       })
   })
