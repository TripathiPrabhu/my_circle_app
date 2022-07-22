import 'package:flutter/material.dart';

class MockupCard extends StatefulWidget {
  final Widget toptext;
  final Widget card1text;
  final Widget card2text;
  final Widget card3text;
  final Widget card4text;
  final Widget card5text;
  final Icon Icon1;
  final Icon Icon2;
  final Icon Icon3;
  final Icon Icon4;
  final Icon Icon5;

  const MockupCard(
      {required this.toptext,
      required this.card1text,
      required this.card2text,
      required this.card3text,
      required this.card4text,
      required this.card5text,
      required this.Icon1,
      required this.Icon2,
      required this.Icon3,
      required this.Icon4,
      required this.Icon5});

  @override
  State<MockupCard> createState() => _MockupCardState();
}

class _MockupCardState extends State<MockupCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //////////////////////..............Outer Big Gradient card Start Here ............/////////////////////
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / .7,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0XFF019DA2), Color(0Xff009CFF)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 40),
            child: widget.toptext,
          ),
        ),

        ////////////////       Center White Container Start here         /////////////////
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                // color: Colors.deepPurple,
                color: Color(0XFFF9F6EE),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ///////////////////Containers inside Cards Start here         ///////////////
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 15, left: 25, right: 25),
                    child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [Color(0XFF019DA2), Color(0Xff009CFF)],
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            widget.card1text,
                            widget.Icon1,
                          ],
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0XFF019DA2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                widget.Icon2,
                                Expanded(child: widget.card2text),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color(0Xff009CFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  widget.Icon3,
                                  Expanded(child: widget.card3text),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Color(0Xff009CFF),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  widget.Icon4,
                                  Expanded(child: widget.card4text),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0XFF019DA2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    widget.Icon5,
                                    Expanded(child: widget.card5text),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
