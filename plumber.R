#' @preempt __first__
#' @get /
function(req, res) {
  res$status <- 302
  res$setHeader("Location", "./__docs__/")
  res$body <- "Redirecting..."
  res
}

#' @get /hello
#' @serializer html
function(){
  "<html><h1>hello world</h1></html>"
}


#' Echo the parameter sent in
#' @param msg The message to echo back.
#' @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}


#' Plot out data from the iris dataset
#' @param spec If provided, filter the data to only this species (e.g. 'setosa')
#' @get /plot
#' @serializer png
function(spec){
  my_data <- iris
  title <- "All Species"

  # Filter if the species was specified
  if (!missing(spec)){
    title <- paste0("Only the '", spec, "' Species")
    my_data <- subset(iris, Species == spec)
  }

  plot(my_data$Sepal.Length, my_data$Petal.Length,
       main=title, xlab="Sepal Length", ylab="Petal Length")
}
