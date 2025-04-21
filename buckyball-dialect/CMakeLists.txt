include_directories(${CMAKE_SOURCE_DIR}/buckyball-dialect/include)
include_directories(${CMAKE_BINARY_DIR}/buckyball-dialect/include)

add_subdirectory(include)
add_subdirectory(src)

# BuckyBallDialectIncGen->MLIRBuckyBallDialect->buckyball-dialect
add_executable(buckyball-dialect main.cpp)
target_link_libraries(buckyball-dialect MLIRBuckyBallDialect)
