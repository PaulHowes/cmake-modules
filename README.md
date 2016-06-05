# CMake-Modules

A collection of CMake modules that I have found useful over time.

# Building

Simple Networking is distributed only as a header. There is nothing to compile in this repository
other than tests which also illustrate how to use `net`.

## Dependencies

* [CMake](http://www.cmake.org) 3.5.0 or newer

## Instructions

To add this repository as a submodule to your CMake project under a top-level directory
named `cmake`:

    $ git submodule add git@github.com:PaulHowes/cmake-modules.git ./cmake

To update this submodule in the future if a newer version is desired

    $ git submodule update --remote ./cmake

Near the beginning of your `CMakeLists.txt` add the submodule directory:

    list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/Modules)

# Contributing

1.  Fork it
2.  Create a feature branch (`git checkout -b new-feature`)
3.  Commit changes (`git commit -am "Added new feature xyz"`)
4.  Push the branch (`git push origin new-feature`)
5.  Create a new pull request.

# Maintainers

* Paul Howes (http://github.com/PaulHowes/)

# License

CMake-Modules copyright 2015 Paul Howes and is licensed under the Apache License.
