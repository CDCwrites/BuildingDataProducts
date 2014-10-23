# This shiny user interface file is a work-in-progress, initially 
# designed for Johns Hopkins Data Products class.  It will ultimately try
# to teach an uninitiated adult learner the subject of Algebra.
#
# Cynthia Davies Cunha
# Johns Hopkins Developing Data Products
# October 2014
# 
library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Learning Algebra"),
    
    sidebarLayout(
        
        sidebarPanel(
            h2("Lesson One: Containers"),
            helpText("A container is a representation of an unknown value. In the equation
                     x + 3 = 7, x is the unknown value, a container. Select a container and
                     an operator and we will build an equation to solve."),
            
            
            selectInput("var", 
                        label = "Choose a container to represent an unknown value",
                        choices = c("?", "x", "a", "y"),
                        selected = ""
                      ),
            
            selectInput("op",
                        label = "Choose an operation to perform:",
                        choices = c("+","-","/","*"),
                        selected = ""
                        ),
            
            numericInput("num", label = "Choose a number:", 0)
        ),
        
        mainPanel(
            p("Sometimes the nomenclature of a new subject can be intimidating.  In Algebra, 
            we often use a ",
            strong(em("container")), 
            " for an unknown value."),
            br(),              
            p("Let's start with the familiar."),
            br(),
            p("If I were to ask:"),
            p("What do you have to add to the number 3 to get 7, I'm sure you would readily answer 4."),
            br(),              
            p("Suppose I write the above problem like this:"),
            p(strong("?"),
            " + 3 = 7", style = "color:blue"), 
            br(),
            p("You would still answer 4, right? The ",
            strong("?"), 
            " is just a container, it represents and holds an unknown value."),
            br(),            
            p("What if I wrote the problem like this: "),
            p(strong("x"),
            " + 3 = 7", style = "color:blue"), 
            br(),
            p("The letter ",
            strong("x"),
            "here is still just ",
            em("a container"),
            " for an unknown value."),  
            p("Your answer is still 4, as in x = 4, which means you substitute 4 into
            the container x to get: "),
            p("4 + 3 = 7", style = "color:blue"),
            
            h3(textOutput("text1")),  
            h3(textOutput("text2"))
            
        )
    )
))