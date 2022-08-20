import 'package:calculator_app/data/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextColorController extends GetxController{

  Color getTextColor(String x) {
    List<String> numbers = [
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.'
    ];
    List<String> operatos = ['(', ')', '/', 'x', '+', '-', '='];
    List<String> clears = ['C', 'DE'];

    if (numbers.contains(x)) {
      return white;
    } else if (operatos.contains(x)) {
      return green;
    } else if (clears.contains(x)) {
      return orange;
    }

    return white;
  }
  
}