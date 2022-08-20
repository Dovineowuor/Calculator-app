import 'package:calculator_app/controller/caculate.dart';
import 'package:calculator_app/controller/text_color.dart';
import 'package:calculator_app/data/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainApplication extends StatelessWidget {
  final calculateController = Get.put(CalculateController());
  final textColorController = Get.put(TextColorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueGrey900,
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 30,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: blueGrey900,
              ),
              child: _texts(),
            ),
          ),
          Expanded(
            flex: 70,
            child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: blueGrey700,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    _btns('C', 'DE', '(', ')'),
                    _btns('7', '8', '9', '/'),
                    _btns('4', '5', '6', 'x'),
                    _btns('1', '2', '3', '+'),
                    _btns('.', '0', '=', '-'),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _texts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            calculateController.exp.toString(),
            style: TextStyle(color: white, fontSize: 24),
          ),
        ),
        SizedBox(height: 10),
        Obx(
          () => Text(
            calculateController.result.toString(),
            style: TextStyle(
                color: white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _btns(String t1, String t2, String t3, String t4) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => calculateController.Calculate(t1),
                child: Text(t1),
                style: TextButton.styleFrom(
                  backgroundColor: blueGrey900,
                  primary: textColorController.getTextColor(t1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => calculateController.Calculate(t2),
                child: Text(t2),
                style: TextButton.styleFrom(
                  backgroundColor: blueGrey900,
                  primary: textColorController.getTextColor(t2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => calculateController.Calculate(t3),
                child: Text(t3),
                style: TextButton.styleFrom(
                  backgroundColor: blueGrey900,
                  primary: textColorController.getTextColor(t3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => calculateController.Calculate(t4),
                child: Text(t4),
                style: TextButton.styleFrom(
                  backgroundColor: blueGrey900,
                  primary: textColorController.getTextColor(t4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}
