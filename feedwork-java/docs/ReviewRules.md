**质量检查 【每天】**
1. 方法注释编写规则  
  1.1. 方法都要有处理逻辑注释。用 " 1. 2. 3. " 写出处理逻辑，并且，方法中每段代码要写上对应的编号  
  1.2. 方法的每个 参数 和 返回值 都要写注释。包括：含义，取值范围  
  类似如下图：  
  ![示例图](https://github.com/hyrenserv/resources/raw/master/feedwork-java/docs/ReviewRules/1-method-mark.png)
2. 方法的代码中，必须有一段注释是：数据可访问权限处理方式  
  类似如下图：  
  ![示例图](https://github.com/hyrenserv/resources/raw/master/feedwork-java/docs/ReviewRules/1-method-mark.png)
3. 每个方法都要写测试用例。使用"类名"+Test命名，里面的方法与被测试方法同名  
4. 正确使用异常。只能用两个异常：BusinessException和AppSystemException。查找“throw new ”，后面必须是这两个异常。如果不是，要有原因说明。  
5. 代码行宽度不能超过100个字符。  

