import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  var exp = ''.obs;
  var result = ''.obs;

  void Calculate(String x) {
    List<String> clearsResult = ['C', 'DE', '='];

    if (!clearsResult.contains(x) && result != '') {
      exp.value = result.value;
      result.value = '';
      exp.value += x;
    } else if (!clearsResult.contains(x)) {
      exp.value += x;
    } else if (x == 'DE') {
      exp.value = exp.value.substring(0, exp.value.length - 1);
    } else if (x == 'C') {
      exp.value = '';
      result.value = '';
    } else {
      Parser parser = Parser();
      Expression e = parser.parse(exp.value.replaceAll('x', '*'));
      ContextModel cm = ContextModel();
      result.value = e.evaluate(EvaluationType.REAL, cm).toString();
    }
  }
}
