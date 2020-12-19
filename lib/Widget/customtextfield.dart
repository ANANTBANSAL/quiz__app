import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  TextEditingController _controllername;
  String  _labelname;
  String _hintname;
  Size deviceSize;
  double widh;
  double padding;

  CustomTextField(this._controllername,this._labelname,this.deviceSize,this._hintname,this.widh,this.padding);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize.width*widh,
        padding:EdgeInsets.all(padding),
        decoration: BoxDecoration(
        ),
        child:TextField(
          controller:_controllername,
          decoration:InputDecoration(
            hintText:_hintname,
            labelStyle:TextStyle(color: Colors.black),
            labelText: _labelname,

          ),
        )
    );
  }
}
