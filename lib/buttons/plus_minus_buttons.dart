
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.icon,
    required this.ontap,
  }) : super(key: key);
final IconData icon;
final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
                    onPressed: ontap,
                    backgroundColor: const Color(0xFF4C4F5E),
                    child:  Icon(icon,color: Colors.white,),
                    ).p(4);
  }
}