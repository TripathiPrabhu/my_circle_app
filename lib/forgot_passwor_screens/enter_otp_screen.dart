import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'enter_new_password.dart';
import '../helpers/MyButton.dart';


class EnterOtpScreen extends StatefulWidget {


  @override
  _EnterOtpScreenState createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
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
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(height: 50,),

                // Implement 4 input fields
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Verification Code"),
                            content: Text('Code entered is $verificationCode'),
                          );
                        }
                    );
                  }, // end onSubmit
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Did you don’t code ?',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),),
                      TextButton(onPressed: (){},
                          child: Text('Please resend',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: MyButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterNewPassword()));
                    },
                    ButtonText: 'RECOVER PASSWORD',
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: MyButton(onPressed: () {  }, ButtonText: 'Verify and Proceed',),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

