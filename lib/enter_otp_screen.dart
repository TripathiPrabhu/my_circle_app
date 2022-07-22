import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'helpers/MyButton.dart';

class EnterOTP extends StatefulWidget {
  EnterOTP({Key? key}) : super(key: key);

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
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
                  padding: const EdgeInsets.only(top: 100,),
                  child: Center(
                    child: Text(
                        'Enter OTP',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                ///Text You have been missed Start Here ///////////////
                Padding(
                  padding: EdgeInsets.only(top: 10,),
                  child: Center(
                    child: Text('''Please enter the 4-digit code \nwe sent to your email \n     rias***@gmail.com''',
                        style: TextStyle(
                          // color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                ///Text Form field start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _name,
                    //obscureText: secureText,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, size: 25,),
                      hintText: 'Enter Your Email',
                      // label: Text('Enter Your Email'),
                    ),
                  ),
                ),

                ///Send OTP  Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 240),
                  child: MyButton(
                    onPressed: () {},
                    ButtonText: 'SEND OTP',
                  ),
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
