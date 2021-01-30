import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_Quiz/model/signup.dart';
class CustomTextField extends StatelessWidget {
  String  _labelname;
  String _hintname;
  Size deviceSize;
  double widh;
  double padding;
  TextEditingController _controllername;
  CustomTextField(this._controllername,this._labelname,this.deviceSize,this._hintname,this.widh,this.padding);
  var blank=new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(

      width: deviceSize.width*widh,
        padding:EdgeInsets.all(padding),

        decoration: BoxDecoration(
        ),
        child:TextField(

          controller:_controllername,
          textInputAction: TextInputAction.done,
          onSubmitted:(text){
            FocusScope.of(context).requestFocus(blank);
           print( _controllername.text);
          },
          decoration:InputDecoration(
             hintText:_hintname,
            labelStyle:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            labelText: _labelname,

          ),
        ),
    );
  }}



