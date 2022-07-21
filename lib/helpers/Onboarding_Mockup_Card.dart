import 'package:flutter/material.dart';
import 'package:my_circle_app/helpers/GradientCard.dart';
import 'package:my_circle_app/helpers/Usable_Container.dart';

class MockupCard extends StatefulWidget {
  const MockupCard({Key? key}) : super(key: key);

  @override
  State<MockupCard> createState() => _MockupCardState();
}

class _MockupCardState extends State<MockupCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //////////////////////..............Outer Big card ............/////////////////////
        GradientCard(
          mywidth: MediaQuery.of(context).size.width,
          myheight: MediaQuery.of(context).size.width / .7,
          child: Container(),
        ),
        Positioned(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 20, right: 20),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, bottom: 15, left: 15, right: 15),
                        child: GradientCard(
                          myheight: 80,
                          mywidth: MediaQuery.of(context).size.width,
                          child: Container(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UseableContainer(
                            myheight: 100,
                            mywidth: 130,
                            child: Text(
                              'Hello',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                            color: Color(0XFF009CFF),
                          ),
                          UseableContainer(
                            myheight: 100,
                            mywidth: 130,
                            child: Text(
                              'Hello',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                            color: Color(0XFF009CFF),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UseableContainer(
                            myheight: 100,
                            mywidth: 130,
                            child: Text(
                              'Hello',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                            color: Color(0XFF009CFF),
                          ),
                          UseableContainer(
                            myheight: 100,
                            mywidth: 130,
                            child: Text(
                              'Hello',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                            color: Color(0XFF009CFF),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
