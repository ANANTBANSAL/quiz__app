import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/app_icons.dart';
import 'package:mvp_Quiz/screen/quizpage.dart';
class Examdetails extends StatefulWidget {
  Map details;
  Examdetails(this.details);
  @override
  _ExamdetailsState createState() => _ExamdetailsState(details);
}

class _ExamdetailsState extends State<Examdetails> {

  Map details;
  _ExamdetailsState(this.details);
  @override
  Widget build(BuildContext context) {

    Size deviceSize=MediaQuery.of(context).size;
    _TagBox(String boxtext)
    {
      return Container(
          width:deviceSize.width*.19,
          height: deviceSize.height*.05,
          decoration: BoxDecoration(
            shape:BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width:1,color: Colors.black45,
            ),
          ),
       child: Center(
           child:Text(boxtext)
        )
      );

    }
    _Details(IconData icon,String First_text,String Second_text)
    {
      return Container(
          padding: EdgeInsets.fromLTRB(7,2,0,0),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon),
                  SizedBox(
                    width:deviceSize.width*.023,
                  ),
                  Text(First_text,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 15)),
                ],),
              Container(padding: EdgeInsets.fromLTRB(36,2,0,0),
                child:Text(Second_text,style:TextStyle(fontSize: 15),),),
            ],
          )
      );
    }
    _SizedBox()
    {
      return SizedBox(
        width: deviceSize.width*.023);
    }
    _text(String val)
    {
      return Text(val,style: TextStyle(fontSize: 10),);
    }
    return Scaffold(
      appBar: customappbar(),
      body: SafeArea(
        child:ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                     width: deviceSize.width*.95,
                      height: deviceSize.height*.33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(bottom:Radius.circular(20)),
                        color: Colors.orange,

                      ),
                      child:Stack(
                        children: [
                          Positioned(
                            top: 15,
                            right:2,
                            child: Icon(Icons.bookmark,color: Colors.white,),
                          ),
                          Positioned(
                              left: 2,
                              top: 2,
                             child:MaterialButton(
                                 child: Icon(Icons.arrow_left,color: Colors.white,size: 50,),
                                     // Within the SecondRoute widget
                                onPressed: () {
                                  Navigator.pop(context);
                               }
                             ),
                          ),
                          Positioned(
                            bottom:50,
                              left: 10,
                              child: Text(details['Course_Name'],style: TextStyle(
                              fontSize: 25,color: Colors.white,
                          ),)),
                          Positioned(
                              bottom:30,
                              left:010,
                              child: Text(details['Institute'],style: TextStyle(
                                fontSize: 15,color: Colors.white,
                              ),)),
                        ],
                      ),

                    ),
                  ),
                  Center(
                    child:  Container(
                      width: deviceSize.width*.95,
                      height: deviceSize.height*.05,
                      child: Row(
                        children: [
                          Text('About',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                          _SizedBox(),
                          _text('Topics Covered'),
                          _SizedBox(),
                          _text('Resources Material'),
                          _SizedBox(),
                          _text('Friends Attempting'),
                          _SizedBox(),
                          _text('T&C')
                        ],
                      ),
                    ),
                  ),
                  Center(

                    child: Column(
                      children: [
                        _Details(Icons.access_time,'Tuesday,03 December 2019',details['Time']),
                        SizedBox(
                          height:deviceSize.height*.02,
                        ),
                        _Details(Icons.description_sharp,'Description',details['Description']),
                        SizedBox(
                          height:deviceSize.height*.023,
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(7,2,0,0),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.tag),
                                    SizedBox(
                                      width:deviceSize.width*.023,
                                    ),
                                    Text('Tags',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 15)),
                                  ],),
                                Container(padding: EdgeInsets.fromLTRB(36,2,0,0),
                                  child:Row(
                                    children: [
                                   _TagBox(details['Tags']),
                                      SizedBox(
                                        width:deviceSize.width*.023,
                                      ),
                                   _TagBox(details["field9"]),
                                      SizedBox(
                                        width:deviceSize.width*.023,
                                      ),
                                   _TagBox(details["field10"]),
                                      SizedBox(
                                        width:deviceSize.width*.023,
                                      ),
                                   _TagBox(details["field11"]),
                                      SizedBox(
                                        width:deviceSize.width*.023,
                                      ),
                              ],
                            )
                        ),
                      ],
                    )
                  ),
                        SizedBox(
                          height:deviceSize.height*.023,
                        ),

                        _Details(MyFlutterApp.help, 'Your Score', 'NOT YET APPEARED FOR EXAM'),
                        Divider(
                          thickness:1,
                            color: Colors.black
                        ),
                     Container(
                       width:deviceSize.width*.33,
                       height: deviceSize.height*.06,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(10),
                       ),

                       child: MaterialButton(
                           child: Text('ATTEMPT TEST',style: TextStyle(color: Colors.white,fontSize:11),maxLines: 1,),
                           onPressed:()
                                       {

                                         Navigator.push(
                                             context, MaterialPageRoute(builder: (ctx) =>GetJsonQuestion(details['QuestionFileName']))
                                         );  }
                       ),
                     )
                      ]
              ),
            )
        ]
          )
          )
          ]
              )
            ),
    );
  }
}
