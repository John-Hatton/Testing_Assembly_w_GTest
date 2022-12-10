# Testing x86_64 Assembly with Google Test

---


## Introduction

This project is intended to be a template, as well as an introduction to x86_64 Assembly. One particularly awesome
component of C and C++ code, is the fact that during the compilation process, our code is eventually reduced to some 
form of Assembly code. This is particularly advantageous, because it works the other way as well. We can write Assembly
code, and call it from C or C++. For all intents and purposes, we're writing C code within C++, as we want to avoid the 
mangling that takes place with C++ function definitions. See Google for more info on this topic. 

With this template, we are able to write Assembly code, assemble it, and then link the resulting object files with our 
C++ project, using CMake. CMake is essential to this build. You will want to review or learn about CMake in order to 
use this project. The "C" in CMake is for Cross-Platform, and with the CMake files in this project, you can write 
Assembly code for Windows, MacOS, Linux. 

Please keep in mind that the calling convention is different for Mac and Linux, and Windows. Of course Windows has to
be different. See the section on this for more info. 

## Unit Testing Review

## Calling Convention

## Usage of Global and Extern Keywords

