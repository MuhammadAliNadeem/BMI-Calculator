// ignore_for_file: file_names

import 'package:bmi_calculator/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  const BottomButton({
    Key? key,
    required this.onpress,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: GestureDetector(
       
       onTap: onpress,
       child: Container(
       width: double.infinity,
       height: bottomContainerHeight,
       margin: const EdgeInsets.only(top: 10),
       color: bottomcardcolour,
       padding: const EdgeInsets.only(bottom: 10),
       child: Center(child: title.text.xl2.bold.make()),
       ),
     ));
  }
}