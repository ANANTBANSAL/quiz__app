import 'package:flutter/material.dart';
class CustomHp extends StatefulWidget {
  @override
  _CustomHpState createState() => _CustomHpState();
}

class _CustomHpState extends State<CustomHp> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    return   Container(
      height:deviceSize.height*.35 ,
      color: Colors.blueGrey,
      child: Stack(
        children: [
          Positioned(
            top: deviceSize.height*.025,
            left: deviceSize.width*.052,
            child: Row(
                children:[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text('Exam',style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                            color:Colors.white70

                        ),)
                    ),
                  ),
                  Container(
                    child: Text('APP',style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}
