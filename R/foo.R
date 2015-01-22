foo_r_function <- function(x, y) {
  res <- .C('foo_cpp_function', as.integer(x), as.integer(y))
}
