import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/custombutton.dart';
import 'package:mvp_Quiz/Widget/customhp.dart';
import 'package:mvp_Quiz/Widget/customtextfield.dart';

import 'login.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize =MediaQuery.of(context).size;
    TextEditingController First_Name=new TextEditingController();
    TextEditingController Last_Name=new TextEditingController();
    TextEditingController Phone_Number=new TextEditingController();
    TextEditingController Email_Address=new TextEditingController();
    TextEditingController Password=new TextEditingController();
    return Scaffold(
      appBar: customappbar(),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: Column(
                children: [
                  CustomHp(),
                  SizedBox(height:7,),
                  Center(
                      child:Text('Sign Up',style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ))
                  ),
                  CustomTextField(First_Name, 'First Name', deviceSize, 'Enter First Name', .8,5 ),

                  CustomTextField(Last_Name, 'Last Name', deviceSize, 'Enter Last Name', .8,5 ),

                  CustomTextField(Phone_Number, 'Phone Number', deviceSize, 'Enter Phone Number', .8,5 ),

                  CustomTextField(Email_Address, 'Email Address', deviceSize, 'Enter Email Address', .8,5 ),

                  CustomTextField(Password, 'Password', deviceSize, 'Enter Password', .8,5 ),

                  CustomButton('SIGN UP', deviceSize, .8, .06, 5, Colors.black),

                  SizedBox(
                    height: deviceSize.height*.01,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (ctx) => login()));
                    },
                    child: Container(
                        height: deviceSize.height*.05,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(color: Colors.black, ),
                              children: <TextSpan>
                              [
                                TextSpan(text: ' Sign Up',
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        )
                    )
                    ,
                  ),
          ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
