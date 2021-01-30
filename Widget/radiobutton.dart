import 'package:flutter/material.dart';
class RadioButton extends StatelessWidget {

  String optionNumber;
  String selectedvalue;
  Function setSelectedValue;
  RadioButton(this.optionNumber,this.selectedvalue,this.setSelectedValue);
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Radio(
        value:optionNumber,
        groupValue: selectedvalue,
        onChanged:(val)
        {

          String value=val.toString();
         setSelectedValue(value);
        },
      ),
    );
  }
}
