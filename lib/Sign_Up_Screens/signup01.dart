import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/MyButton.dart';

class Signup01Screen extends StatefulWidget {
  Signup01Screen({Key? key}) : super(key: key);

  @override
  State<Signup01Screen> createState() => _Signup01ScreenState();
}

class _Signup01ScreenState extends State<Signup01Screen> {
  bool secureText = true;
  final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////Top Icon Back Button Start Here ///////////////
                Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                ///Text WelCome Here Start Here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 15),
                  child: Text(
                    'Welcome here',
                    style: GoogleFonts.kalam(
                        textStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                ///Text You have been missed Start Here ///////////////
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text("Let’s create your account",
                      style: TextStyle(
                        // color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                ///Text Form field start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _name,
                    //obscureText: secureText,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Email',
                      // label: Text('Enter Your Email'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    obscureText: secureText,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      // label: Text('Enter Your Password'),
                      suffixIcon: IconButton(
                        icon: secureText
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.shield_moon_outlined),
                        onPressed: () {
                          setState(() {
                            secureText = !secureText;
                          });
                        },
                      ),
                    ),
                  ),
                ),

                ///Next Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: MyButton(
                    onPressed: () {},
                    ButtonText: 'NEXT',
                  ),
                ),
                ///Join Now Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 20,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                        style: TextStyle(fontSize: 16),),
                      TextButton(onPressed: (){},
                          child: Text('Join Now',style: TextStyle(fontSize: 20),))
                    ],),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
