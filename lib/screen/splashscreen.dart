
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
          ,

        ],

      ),

    );
  }
}
