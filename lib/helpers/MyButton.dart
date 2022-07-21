import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String? ButtonText;
  VoidCallback? onPressed;

  MyButton({required this.ButtonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 25),
      child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 2.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              colors: [
                Color(0XFF019DA2),
                Color(0XFF009CFF),
              ],
           ),
            //color: Colors.deepPurple.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          // color: Colors.black,
          width: MediaQuery.of(context).size.width/1.2,
          height: 50,
          //+ padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: Text(
              '${ButtonText}',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.transparent),
                // foregroundColor: MaterialStateProperty.all(
                //     Colors.yellowAccent),
                overlayColor: MaterialStateProperty.all(
                    Colors.transparent),
                shape: MaterialStateProperty.all<
                    RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      // side: BorderSide(color: Colors.black)
                    ))),
            onPressed: onPressed,
          )),
    );
  }
}
