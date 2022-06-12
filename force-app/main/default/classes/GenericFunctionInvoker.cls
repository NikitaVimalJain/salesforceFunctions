public with sharing class GenericFunctionInvoker {
  public static String invoke(String functionName, String payload) {
    functions.Function function = functions.Function.get(
      'SalesforceFunctions.myfunction1'
    );
    functions.FunctionInvocation invocation = function.invoke(payload);
    String response = invocation.getResponse();
    system.debug('response of function' + response);
    return response;
  }
}
