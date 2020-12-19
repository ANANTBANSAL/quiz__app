
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'login.dart';
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  nextScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => login()));
  }
  _moveToNext()
  {

      Future.delayed(Duration(seconds:5),()
      {
        nextScreen();
      });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNext();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:customappbar(),
       body:Container(
          child:SafeArea(
             child: Stack(
              children:[


                Column(
        children: [
                  SizedBox(
                    height: deviceSize.height*.15,
                  ),
                   Container(
                     child:Row(
                         children:[Text('HELLO',
                                                textAlign:TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 60
                                                )),
                                            ]
                                        ),),
                  Container(
                    child:Row(
                                      children:  [Text('Welcome To Exam System',
                                          textAlign:TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight. w100,
                                              fontSize: 30
                                          )),
                                      ]
                                  ),),
    ]
      ),

                Positioned(
                   bottom:0,
                    left:0,
                    child:Container(
                      height: deviceSize.height*.1,
                      width: deviceSize.width,
                      color:Colors.blueGrey,
                    )
                ),
    ]  )
    )
    )
    );
  }
}
