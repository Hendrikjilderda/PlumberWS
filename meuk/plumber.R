# TO-DO
# * Error handling
# * local 
# * uitwerken workshop
# * inlezen MLflow



## https://www.rplumber.io/reference/index.html

#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)

model <- readRDS("GCR_xgmodel.rds")

# opdracht 1
#* Current time
#* @get /time
function(){
  return(Sys.time())
}

#* Current day
#* @get /date
function(){
  return(Sys.Date())
}

#* @apiTitle Plumber Example API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg = "") {
    list(msg = paste0("echos: '", msg, "'"))
}


## gebruik voor opdracht 3

#* Testing basic sum function
#* @param a first value
#* @param b second value
#* @get /sum
function(a, b){
  return(as.numeric(a)+as.numeric(b))
}


#testen
################################################################################

#* Voorspel kans op betalen
#* @param Age:int leeftijd(
#* @param Sex:string geslacht ("male"/"female")
#* @param Job:string baanstatus ("unskilled and non-resident", "unskilled and resident", "skilled", "highly skilled")
#* @param Housing:string huisstatus("own", "rent", "free")
#* @param Saving.accounts:string spaarrekening ("little", "moderate","rich")
#* @param Checking.account:string betaalrekening ("little", "moderate","rich")
#* @param Duration:int duur van lening in maanden
#* @param Purpose:string doel van het geleende geld ("domestic appliances", "furniture/equipment", "education", "radio/TV", "repairs", "car", "business", "vacation/others")
#* @get /predict
function(Age, Sex, Job, Housing, Saving.accounts, Checking.account, Duration, Purpose){
  new_observation <- tibble::tibble(
    Age = Age,
    Sex = Sex,
    Job = Job,
    Housing = Housing,
    Saving.accounts = Saving.accounts,
    Checking.account = Checking.account,
    Duration = Duration,
    Purpose = Purpose
  )

  probability <- predict(model, new_observation, type= "prob")
  return(probability)
}


## get a attachment back from the api

#' @get /iris/csv
#' @serializer csv
function() {
  as_attachment(iris, "iris.csv")
}


# zou in theorie moeten werken. Iets met bestand problemen van csv naar xlsx
#' @get /iris/xlsx
#' @serializer xlsx
function() {
  as_attachment(iris, "iris.xlsx")
}


#* @get /test
function(){
  include_html("site.html")
}

