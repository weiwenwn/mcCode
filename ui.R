# ui.R
shinyUI(pageWithSidebar(
  headerPanel("Mean UPH value for mcCode"),
  sidebarPanel(
    selectInput("dataset", "Choose a dataset:",
                choices = c("data")
                )
  ),
  mainPanel(
    htmlOutput("view")
)))
