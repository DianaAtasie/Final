library(shiny)
library(ggplot2)
library(dplyr)
library(carData)
shinyServer(function(input, output) {
 
  output$result <- renderText({
    library(readr)
    library(stringi)
    library(stringr)
    library(tidytext)
    library(janeaustenr)
    library(dplyr)
    library(readr)
    library(stringi)
    library(stringr)
    library(tidytext)
    library(janeaustenr)
    library(dplyr)
    library(textreadr)
    webpage <- read_html("https://www.nytimes.com/interactive/2017/06/23/opinion/trumps-lies.html")
    data=data.frame(webpage)
    names(data)="X1"
    class(data$X1)
    data$X1=as.character(data$X1)
    words=input$words
    n=sum(stri_count_words(words))
    new_datan <- data %>% unnest_tokens(word,X1,token = "ngrams", n = n+1)
    r=new_datan %>% count(word, sort = TRUE)
    library(pracma)
    head(r$word,10)
    ?word
    x=word(r$word,start=1,end= n, sep =" ")
    as=grep(words, x)
    length(as)
    if(length(as)>=1)
    {asf=strsplit(r$word[as[1]], " ")
    result=asf[[1]][n+1]}
    if(length(as)==0)
      result="We can not predict next word"
    result
    result
  })

})
