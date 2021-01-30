import 'dart:ui';

import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String _buttonname;
  double widh;
  Size deviceSize;
  double heigt;
  double radius;
   Color _colur;
   Function _callback;

  CustomButton(this._buttonname,this.deviceSize,this.widh,this.heigt,this.radius,this._colur,this._callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width*widh,
        height: deviceSize.height*heigt,

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color:_colur,
      ),
      child: MaterialButton(
        child: Text(_buttonname,style:TextStyle(fontSize: 18,)),
             textColor:Colors.white70,

            onPressed:(){
          _callback();
            }
      )
    );

  }
}
