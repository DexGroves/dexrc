.First <- function() {
  options(
    # Choose a mirror up front for package installation.                                                                                
    repos = c(CRAN = "https://cran.rstudio.com/"),                                                                                      
    # Ignore newlines in debugger, instead use `n` to advance.                                                                          
    browserNLdisabled = TRUE,                                                                                                           
    # Stop terminal paralysing stdout spam when you print the wrong object                                                              
    max.print = 2e3        
  )
}

if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(data.table))
  suppressMessages(require(magrittr))
  suppressMessages(require(colorout))
  suppressMessages(require(setwidth))
}
