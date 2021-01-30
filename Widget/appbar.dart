import 'package:flutter/material.dart';
class customappbar extends StatelessWidget with PreferredSizeWidget {
  Size preferredSize;
  customappbar()
  {
    preferredSize = Size.fromHeight(25.0);
  }
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      child: AppBar(
        toolbarHeight: deviceSize.height*.05,
        backgroundColor:Colors.deepPurple,
        actions: [
          Icon(Icons.stop) ,
          Icon(Icons.circle,size: 16),
          Transform.rotate(angle:332.5,origin: const Offset(0,0),child:Icon(Icons.play_arrow) ,)
        ],
      ),
    );
  }
}
