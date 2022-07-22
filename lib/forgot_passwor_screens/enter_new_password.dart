import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_circle_app/SignIn_Screen.dart';
import 'forgot_password.dart';
import '../helpers/MyButton.dart';

class EnterNewPassword extends StatefulWidget {
  EnterNewPassword({Key? key}) : super(key: key);

  @override
  State<EnterNewPassword> createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends State<EnterNewPassword> {
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
                ///Text New Password Start Here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 15),
                  child: Text(
                    'New Password!',
                    style:  TextStyle(
                        fontSize: 35,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                  ),

                ///Text Enter your new password Start Here ///////////////
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15),
                  child: Text("Enter Your New Password",
                      style: TextStyle(
                        color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ///Text Form field start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _name,
                    //obscureText: secureText,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
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
                      // label: Text('Enter Your Email'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    obscureText: secureText,
                    decoration: InputDecoration(
                      hintText: 'Re-enter Your Password',
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

                ///Update Password Button  start here ///////////////
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: MyButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                    },
                    ButtonText: 'Update Password',
                  ),
                ),
                ///Join Now Button  start here ///////////////
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
