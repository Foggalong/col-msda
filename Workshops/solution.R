solution = function() {
  #' When writing problem sheets in, it's useful to have the questions and
  #' the solutions in the same file. This R function allows for creating a
  #' 'solution' block in Quarto that will appear if the global parameter
  #' `show_solutions` is true or will disappear if it is false. It's used
  #' as follows:
  #'
  #'    ::: `r solution()`
  #'    Content of your solution goes here.
  #'    :::
  #'
  #' This idea is based on a blog post by Nicola Rennie
  #' https://nrennie.rbind.io/blog/r-tutorial-worksheets-quarto

  if (params$show_solutions) {
    "{.callout-note}
#### Solution"
  } else {
    "{.content-hidden}"
  }
}
