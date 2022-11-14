// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color ;
  final Widget cardchild;
  final VoidCallback onpress;
  const MyContainer({
    Key? key,
    required this.color,
    required this.cardchild,
     required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: onpress,
      child: Container(
        height: 180,width: 150,
         decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
         ),
        child: cardchild,
        
      ),
    );
  }
}
