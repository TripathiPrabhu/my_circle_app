import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_circle_app/forgot_passwor_screens/enter_otp_screen.dart';
import '../helpers/MyButton.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          body: Column(
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
                child: Text('Forgot password',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),
              ),

              ///Text You have been missed Start Here ///////////////
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                    '''Please enter your email below and we’ll send you an OTP to reset your password''',
                    style: TextStyle(
                        // color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ),

              ///Text Form field start here ///////////////
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _name,
                  //obscureText: secureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      size: 25,
                    ),
                    hintText: 'Enter Your Email',
                    // label: Text('Enter Your Email'),
                  ),
                ),
              ),

              ///Send OTP  Button  start here ///////////////
              Padding(
                padding: const EdgeInsets.only(top: 240),
                child: MyButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpScreen()));
                  },
                  ButtonText: 'SEND OTP',
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
