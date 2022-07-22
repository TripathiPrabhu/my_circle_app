import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'forgot_password.dart';
import 'helpers/MyButton.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                      icon: Icon(
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
                ///Text WelCome Back Start Here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 15),
                  child: Text(
                    'Welcome back!',
                    style: GoogleFonts.kalam(
                        textStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                ///Text You have been missed Start Here ///////////////
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text("You've been Missed",
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
                    decoration: InputDecoration(
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
                ///forgot Button  start here ///////////////
                Padding(padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                    }, child: Text('Forgot Password',
                    style: TextStyle(fontSize: 18),),),
                  ],
                ),
                ),
                ///SignIn Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: MyButton(
                    onPressed: () {},
                    ButtonText: 'SIGN IN',
                  ),
                ),
                ///Join Now Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 60,),
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
