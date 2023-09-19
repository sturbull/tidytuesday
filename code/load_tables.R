load_tables <- function(FOLDER){
  #Load tables
  FILES <- list.files(FOLDER)
  for(FILE in FILES){
    if(str_detect(FILE,".csv")){
      table_name  <-  str_replace_all(FILE,".csv","")
      assign(x =table_name,
             value = read.csv(paste0(FOLDER,"/",FILE)),
             envir = parent.frame()
      )
      print(paste0("table assigned to environment as: ",table_name))
    }
  }
  
}