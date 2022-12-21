#' @title say_hello
#' @description A function to say "hello!"
#' 
#' @author GM.W
#' 
#' @param name The person to say hello to. Default is `NULL`.
#' @param color The color of the words. Default is `NULL`.
#' 
#' @usage say_hello(name)
#' 
#' @return NULL
#' 
#' @export
#' 
#' @example say_hello("Xiaoming",color = "green")
#' 
say_hello <- function(name = NULL, color = NULL){
  if(is.null(name)){
    tmp <- "Hello!"
  }else{
    tmp <- paste0(name, "! Hello!")
  }
  
  if(is.null(color)){
    cat(tmp)
  }else{
    eval(parse(text = paste0("cat(crayon::",color,"(tmp))")))
  }
  
}

