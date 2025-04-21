#include "Dialect/BuckyBall/BuckyBallDialect.h"
#include "mlir/IR/DialectRegistry.h"
#include "mlir/IR/MLIRContext.h"

void hello() {
  // 初始化方言注册器
  mlir::DialectRegistry registry;
  // 初始化上下文环境
  mlir::MLIRContext context(registry);
  // 注册方言
  auto dialect = context.getOrLoadDialect<mlir::buckyball::BuckyBallDialect>();
  // 调用方言的方法
  dialect->sayhello();
}

int main() {
  hello();
}
