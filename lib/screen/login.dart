import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/custombutton.dart';
import 'package:mvp_Quiz/Widget/customhp.dart';
import 'package:mvp_Quiz/Widget/customtextfield.dart';
import 'package:mvp_Quiz/screen/signup.dart';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _emailFilter = new TextEditingController();
   TextEditingController _passwordFilter = new TextEditingController();
   bool showvalue=false;

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:customappbar(),
      body:SafeArea(
        child:ListView(
        scrollDirection:Axis.vertical,
          children:[
            Container(
              child: Column(
                  children:[
                  CustomHp(),
                    SizedBox(height:7,),
                    Center(
                        child:Text('Sign In',style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ))
                    ),
                    SizedBox(height:7,),
                    Container(
                        child:CustomTextField(_emailFilter,'Username',deviceSize,'Enter Username',.8,5)
                    ),
                    SizedBox(height:7,),
                    Container(
                        child:CustomTextField(_passwordFilter,'Password',deviceSize,'Enter Password', .8 ,5)
                    ),
                    SizedBox(height:7,),
                    Container(
                      child:CustomButton('LOGIN',deviceSize,.8,.06,5,Colors.deepPurple),
                    ),
                    Container(
                        width: deviceSize.width*.8,
                        height: deviceSize.height*.03,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                children:[
                                  Checkbox(
                                    value: showvalue,
                                    onChanged: (value) {
                                      setState(() {
                                        bool vl;
                                        if(showvalue==true)
                                        {
                                          vl=false;
                                        }
                                        else
                                          vl=true;
                                        showvalue  = (vl);
                                      });
                                    },
                                  ),  Text('Remmember Me')
                                ]
                            ),
                            Text('Forgot Password?')
                          ],
                        )),

                    SizedBox(
                      height: deviceSize.height*.04,
                    ),
                   Container(
                     width: deviceSize.width*.8,
                     height: deviceSize.height*.05,
                     child:  Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                             width: deviceSize.width*.3,
                             height: deviceSize.height*.06,

                             decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(5),
                               color:Colors.redAccent,
                             ),
                             child: MaterialButton(
                               child:Row(

                                   children:[
                                     Flexible(
                                       //flex:2,
                                       child: Container(
                                       decoration:BoxDecoration(
                                         shape:BoxShape.circle ,
                                       ),
                                           child: Container(
                                             height: deviceSize.height*.03,
                                           width: deviceSize.width*.05,
                                           decoration: BoxDecoration(
                                           shape: BoxShape.circle
                                         ),
                                                 child:Image(
                                                   image:AssetImage('images/google_logo.jpg'),
                                                    fit:BoxFit.cover,),
                                               ),
                                     ),),
                                     Text('Sign In',style:TextStyle(fontSize: 18,))]
                     ),
                                 textColor:Colors.white70,

                                 onPressed:(){}

                         )),
                         Container(
                             width: deviceSize.width*.3,
                             height: deviceSize.height*.06,

                             decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               borderRadius: BorderRadius.circular(5),
                               color:Colors.blue[900],
                             ),
                             child: MaterialButton(
                                 child:Row(
                                     children:[
                                      Container(
                                         height: deviceSize.height*.03,
                                         width: deviceSize.width*.05,
                                         decoration: BoxDecoration(
                                             shape: BoxShape.circle
                                         ),
                                         child:Image(
                                           image:AssetImage('images/facebook_logo.jpg'),
                                           fit:BoxFit.cover,),
                                       ),
                                       Text('Sign In',style:TextStyle(fontSize: 18,)),]
                                 ),
                                 textColor:Colors.white70,

                                 onPressed:(){}
                             )
                         ),
                       ],
                     ),
                   ),
                    SizedBox(
                        height: deviceSize.height*.01,
                    ),
                   InkWell(
                       onTap: (){
                         Navigator.push(context , MaterialPageRoute(builder:(ctx) =>SignUp()));
                       },
                       child:Container(
                           child: Center(
                             child: RichText(
                               text: TextSpan(text: 'Don\'t have an account?',
                                   style: TextStyle(color: Colors.black),
                                   children: <TextSpan>[
                                     TextSpan(text: ' Sign In',
                                         style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                                     )
                                   ]
                               ),
                             ),
                           )
                       )

                   )

                  ]

              ),
            ),
          ]
        )
      )
    );
  }
}
