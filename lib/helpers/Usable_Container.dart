import 'package:flutter/material.dart';

class UseableContainer extends StatelessWidget {
  final double myheight;
  final double mywidth;
  final Widget child;
  final Color color;


  const UseableContainer({ required this.myheight, required this.mywidth, required this.child, required this.color,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: myheight,
        width: mywidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color
        ),

      ),
    );
  }
}
