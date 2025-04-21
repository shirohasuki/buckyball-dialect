cmake_minimum_required(VERSION 3.15)
project(BuckyBall LANGUAGES C CXX)
set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING " " FORCE)
add_compile_options(-fPIC)
add_compile_options(-fno-rtti)

#-------------------------------------------------------------------------------
# include mlir and llvm
#-------------------------------------------------------------------------------
# in source directory
set(LLVM_DIR "${CMAKE_SOURCE_DIR}/../llvm/llvm")
set(MLIR_DIR "${CMAKE_SOURCE_DIR}/../llvm/mlir")
set(LLVM_INCLUDE_DIRS "${LLVM_DIR}/include")
set(MLIR_INCLUDE_DIRS "${MLIR_DIR}/include")
include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})

# in build directory
include_directories(${CMAKE_BINARY_DIR}/third-party/llvm/include)
include_directories(${CMAKE_BINARY_DIR}/third-party/llvm/tools/mlir/include)

#-------------------------------------------------------------------------------
# 
#-------------------------------------------------------------------------------
add_subdirectory(third-party)

list(APPEND LLVM_CMAKE_DIR "${CMAKE_BINARY_DIR}/third-party/llvm/lib/cmake/llvm")
list(APPEND MLIR_CMAKE_DIR "${CMAKE_BINARY_DIR}/lib/cmake/mlir")
list(APPEND CMAKE_MODULE_PATH ${MLIR_CMAKE_DIR})
list(APPEND CMAKE_MODULE_PATH ${LLVM_CMAKE_DIR})
include(LLVMConfig)
include(MLIRConfig)
include(TableGen)
include(AddLLVM)
include(AddMLIR)
#-------------------------------------------------------------------------------
# buckyball dialect implementation
#-------------------------------------------------------------------------------
add_subdirectory(buckyball-dialect)
