
import 'package:flutter/material.dart';
class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: deviceSize.height*.05,
        backgroundColor:Colors.deepPurple,
        actions: [
          Icon(Icons.stop) ,
          Icon(Icons.circle,size: 16),
          Transform.rotate(angle:332.5,origin: const Offset(0,0),child:Icon(Icons.play_arrow) ,)
        ],
      ),
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
