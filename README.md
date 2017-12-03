# Doxygen + Perl image

![logo](http://www.stack.nl/~dimitri/doxygen/images/doxygen.png)

# What is Doxygen ?

[Doxygen](http://www.stack.nl/~dimitri/doxygen) is the de facto standard tool for generating documentation from annotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

The perl filter is also included. See https://github.com/jordan2175/doxygen-filter-perl.

# Usage

Add a Doxyfile in the current directory, then:

```
  docker run -it -u $(id -u):$(id -g) --rm -v $(pwd):/tmp poum/doxygen
```
where `$(pwd)` is where your feature directory lives.
