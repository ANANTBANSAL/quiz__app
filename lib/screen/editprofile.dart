import 'package:flutter/material.dart';
class c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size deviceSize=MediaQuery.of(context).size;
    return Container(
        height: deviceSize.height*.05,
      decoration: BoxDecoration(
        shape:BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Icon(Icons.my_library_books),),
          Positioned(child: Text('Exams'),),
        ],
      )
    );
  }
}
