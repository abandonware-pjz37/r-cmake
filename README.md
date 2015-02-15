# R package with CMake build

### C++ part

- C++ function for exporting from shared library: `foo_cpp_function` (file `src/foo.cpp`)
- C++ shared library `foocpp` (file `CMakeLists.txt`)
- Empty makefile to avoid R standard build (file `src/Makefile`)
- Custom configure script to trigger CMake build (file `configure`)

### R Integration

 - Load `foocpp` library into R package (`useDynLib(foocpp)` file `NAMESPACE`)
 - R wrapper function `foo_r_function` to call C++ `foo_cpp_function` (file `R/foo.R`)
 - Export R function `foo_r_function` (`export('foo_r_function')` file `NAMESPACE`)

### R package
 - Library name `foopack` (file `DESCRIPTION`)
 - Version `0.0.1` (file `DESCRIPTION`)
 - Result package name `foopack_0.0.1.tar.gz`

### R example
 - Load R library `foopack` (`library('foopack')` file `mytest.R`)
 - Call `foo_r_function` (file `mytest.R`)

### Testing scripts
 - Clean directory (`clean.py`)
 - Run `R CMD build`, `R CMD check`, `R CMD INSTALL` (to local directory) and test `mytest.R` (`run.py`)
