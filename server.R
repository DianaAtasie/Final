library(shiny)
library(ggplot2)
library(dplyr)
library(carData)
shinyServer(function(input, output) {
 
  output$result <- renderText({
    words=input$words
    words1=substr(words, 1, nchar(words)-1) 
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
    n=sum(stri_count_words(words))
    new_datan <- data %>% unnest_tokens(word,X1,token = "ngrams", n = n+1)
    r=new_datan %>% count(word, sort = TRUE)
    library(pracma)
    x=word(r$word,start=1,end= n, sep =" ")
    as=grep(words, x)
    ?trimws
    words=as.character(words)
    if(nchar(words)!=0)
   {result="Please wait. It takes some time"
   result
   if(length(as)>=1)
    {asf=strsplit(r$word[as[1]], " ")
      result=asf[[1]][n+1]
      result
      }
    else {
      if(nchar(words)==0 || substr(words, start=nchar(words), stop=nchar(words))==" ")
      {"Type the new word!"}
       else {result="We cannot predict next word, because we don't have these words in our database"
    result}}

  }}

  
  )

})
