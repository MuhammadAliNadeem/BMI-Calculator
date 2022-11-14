// ignore_for_file: file_names

import 'package:bmi_calculator/buttons/calculationButton.dart';
import 'package:bmi_calculator/data/mycontainer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'data/constants.dart';

class ResultPage extends StatelessWidget {
 final String bmiresult;
 final String textresult;
 final String interpotationresult;

  const ResultPage({super.key, required this.bmiresult, required this.textresult, required this.interpotationresult});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: "BMI Calculator".text.make()), backgroundColor:  const Color(0xFF0A0E21),),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(child: "Your Result".text.xl5.bold.make()),
          Expanded(flex: 4,
          
            child: MyContainer(color: activeCardColour ,
             cardchild:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textresult.text.size(20).color(Colors.green).bold.make(),
               bmiresult.text.size(80).bold.make(),
                interpotationresult.text.align(TextAlign.center).size(20).make(),
              ],
            )
             , onpress: () {
              
            }
            )
          ),
         SizedBox(
          height: 80,
          child: BottomButton(onpress: () => Navigator.pop(context), title: "RE-CALCULATE"))
        ],
      )
    );
  }
}