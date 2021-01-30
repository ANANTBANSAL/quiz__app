import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/customtextfield.dart';
class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _firstName = new TextEditingController();
    TextEditingController _lastName= new TextEditingController();
    TextEditingController _phoneNumber = new TextEditingController();
    Size deviceSize=MediaQuery.of(context).size;
    return Scaffold(
        appBar:customappbar(),
      body: SafeArea(
        child: ListView(
          children: [
           Column(
             children: [Container(
               height: deviceSize.height*.18,

               child: Column(
                 children: [
                   SizedBox(
                     height: deviceSize.height*.02,
                   ),
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
                             color:Colors.white

                         ),)
                     ),
                   ),
                   SizedBox(
                     height: deviceSize.height*.02,
                   ),
          Text('EDIT PROFILE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                 ],
               ),
             ),
               CustomTextField(_firstName,'First Name',deviceSize,'',.8,5),
               CustomTextField(_lastName,'Last Name',deviceSize,'',.8,5),
               CustomTextField(_phoneNumber,'Phone Number',deviceSize,'',.8,5),

             ]),


        ]),
      )
    );
  }
}
