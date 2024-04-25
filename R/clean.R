# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

leave_vars <- function(vars_vec, fun.stay = T){
  env <- parent.env(environment())
  if(fun.stay){
    funs <- ls(envir = env, sorted = F)[eapply(env, class) == "function"]
    rm(list = ls(envir = env)[!ls(envir = env) %in% c(vars_vec, funs)], envir = env)
  }else{
    rm(list = ls(envir = env)[!ls(envir = env) %in% vars_vec], envir = env)
  }
}
