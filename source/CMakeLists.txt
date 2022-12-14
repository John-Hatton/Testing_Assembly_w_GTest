#Enable ASM provided by NASM
enable_language(ASM_NASM)

if(APPLE)
    #Add leading underscore when building macho64 object files
    string(APPEND CLION_ASM_NASM_FLAGS "--prefix _")
endif(APPLE)


# If the goal is to interact with C++ code and assembly code, calling convention
#  changes between platform, some adjustment on the assembly code is required.

# The following will pre-define a NASM macro "WIN32". This permit to conditionally assemble
#  code in the following manner :
#   %ifdef WIN32
#      ; code for Windows ABI
#   %else
#      ; code for System V AMD64 ABI
#   %endif
if(WIN32)
    string(APPEND CLION_ASM_NASM_FLAGS "-dWIN32=1")
endif(WIN32)




set(IS_DEBUG_BUILD CMAKE_BUILD_TYPE STREQUAL "Debug")

# Indication to the code that this is a debug build
if (${IS_DEBUG_BUILD})
    set(CMAKE_ASM_NASM_FLAGS "-dDEBUG")
endif ()



add_library(ASM-Demo_lib library/library.asm library/library.hpp)
add_executable(ASM-Demo main.cpp)
target_link_libraries(ASM-Demo ASM-Demo_lib)