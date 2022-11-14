// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class IconContent extends StatelessWidget {
final IconData icon;
final String label;
  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(icon,size:50,color: Colors.white,),
       15.heightBox,
       label.text.xl.make()
      ],
    );
  }
}
