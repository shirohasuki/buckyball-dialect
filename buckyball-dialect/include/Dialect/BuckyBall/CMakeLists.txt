set(LLVM_TARGET_DEFINITIONS BuckyBallDialect.td)

# 生成BuckyBallDialect.h.inc和BuckyBallDialect.cpp.inc
# --gen-dialect-decls 声明
# --gen-dialect-defs 实现
mlir_tablegen(BuckyBallDialect.h.inc --gen-dialect-decls -dialect=BuckyBall)
mlir_tablegen(BuckyBallDialect.cpp.inc --gen-dialect-defs -dialect=BuckyBall)

# 添加dialect生成目标(ninja BuckyBallDialectIncGen)
add_public_tablegen_target(BuckyBallDialectIncGen)
