import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_circle_app/helpers/MyButton.dart';

import '../helpers/painter.dart';
import 'Onboarding_Mockup_Screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          bottomSheet: MyBottomSheet(),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Welcome to',
                    style: GoogleFonts.kalam(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFF019DA2), Color(0XFF009CFF)],
                  )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 160,
                  width: 160,
                  child: Image.asset('images/Logo-2@3x.png'),
                ),
                const SizedBox(height: 25),
                const Text(
                  'My Circle',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    lorem(paragraphs: 1, words: 10),
                    style: GoogleFonts.kalam(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none,
        // overflow: Overflow.visible,
        children: [
          Container(
            //color: Colors.green,
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/Circle.png',
              fit: BoxFit.fill,
            ),
          ),
          //Container(),

          Positioned(
            left: 170,
            top: -20,
            child: Container(
              height: 55,
              width: 35,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 0),
                        blurRadius: 2.0)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white10)),
              child: Icon(Icons.arrow_downward),
            ),
          ),
          Positioned(
            //left: 50,
            top: 50,
            child: MyButton(
              ButtonText: 'GET STARTED',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingMockupScreen()));
              },
            ),
          ),
          Positioned(
            top: 120,
            left: 80,
            child: Row(
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ]);
  }
}
