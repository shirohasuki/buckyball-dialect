add_mlir_dialect_library(MLIRBuckyBallDialect
  BuckyBallDialect.cpp

  ADDITIONAL_HEADER_DIRS
  ${CMAKE_CURRENT_SOURCE_DIR}/../include/Dialect/BuckyBall
  
  DEPENDS 
  BuckyBallDialectIncGen
  
  LINK_LIBS PUBLIC 
  MLIRIR MLIRTensorDialect
)
