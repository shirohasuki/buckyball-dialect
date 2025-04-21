#ifndef BUCKBALL_DIALECT_TD
#define BUCKBALL_DIALECT_TD

// 注意这里没有 #, 且 td 只能 include td
include "mlir/IR/DialectBase.td"

// ref llvm/mlir/include/mlir/IR/DialectBase.td
// 继承 Dialect 类
def BuckyBallDialect : Dialect {
  // 方言的名字, let 表示覆盖父类 (Dialect) 的 name 属性
  let name = "BuckyBall";

  // 方言的概述
  let summary = "BuckyBall dialect";
  
  // 方言的详细描述
  let description = "BuckyBall is a dialect for the BuckyBall Accelerator";
  
  // 方言的依赖
  let dependentDialects = ["::mlir::tensor::TensorDialect"];

  // 用于生成比较标准的属性管理的代码
  // let discardableAttrs = (ins);

  // 生成代码的命名空间
  let cppNamespace = "::mlir::buckyball";

  // 额外的声明
  let extraClassDeclaration = [{
    static void sayhello();
  }];
  
  // 是否规范化
  let hasConstantMaterializer = 0;

  // 是否生成默认的析构函数
  let hasNonDefaultDestructor = 1;

  // 是否生成操作数的属性检验
  let hasOperationAttrVerify = 0;
  
  // 是否生成RegionArg的属性检验
  let hasRegionArgAttrVerify = 0;

  // 是否生成RegionResult的属性检验
  let hasRegionResultAttrVerify = 0;

  //
  let hasOperationInterfaceFallback = 0;

  // 是否使用默认的属性解析输出
  let useDefaultAttributePrinterParser = 0;

  // 是否使用默认的类型解析输出
  let useDefaultTypePrinterParser = 0;

  // 是否使用默认的值解析输出
  let hasCanonicalizer = 0;

  // 是否使用规范化的pattern
  let hasCanonicalizer = 0;

  // 是否是可扩展的方言
  let isExtensible = 0;

  // Whether inherent Attributes defined in ODS will be stored as Properties.
  let usePropertiesForAttributes = 1;
  
}

#endif // BUCKBALL_DIALECT_TD
