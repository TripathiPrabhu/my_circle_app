import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final double myheight;
  final double mywidth;
   final Widget child;



  GradientCard( { required this.mywidth, required this.myheight,required this.child,});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: myheight,
      width: mywidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color(0XFF019DA2), Color(0XFF009CFF)
              ]
          )
      ),
    );
  }
}
