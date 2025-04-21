#include "Dialect/BuckyBall/BuckyBallDialect.h"
#include "llvm/Support/raw_ostream.h"

#define FIX
// in build/buckyball-dialect/include
#include "Dialect/BuckyBall/BuckyBallDialect.cpp.inc"
#undef FIX

namespace mlir::buckyball {
// 实现方言的初始化方法
void BuckyBallDialect::initialize() {
  // llvm::outs() << "initializing " << getDialectNamespace() << "\n";
}

// 实现析构函数
BuckyBallDialect::~BuckyBallDialect() {
  // llvm::outs() << "destroying " << getDialectNamespace() << "\n";
}

// 实现在extraClassDeclaration中声明的方法
void BuckyBallDialect::sayhello() {
  llvm::outs() << "hello in " << getDialectNamespace() << "\n";
}

} // namespace mlir::buckyball
