import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/gridboxtype.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

double _gridSizedBox=12.5;
  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    _text(String val)
    {
      return Text(val,style: TextStyle(fontSize: 11),);
    }
    _SizedBox()
    {
      return SizedBox(
        width: deviceSize.width*.027,
      );
    }
    _gridContainer(String text,IconData icon,Color colour)
    {
      return Container(
        width: deviceSize.width*.46,
          height: deviceSize.height*.12,
          decoration: BoxDecoration(
            color:colour,
            shape:BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 2,
                child: Icon(icon,color: Colors.white,),),
              Positioned(
                bottom:0,
                left: 6,
                child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white,),),),
            ],
          )
      );
    }
    return Scaffold(
      appBar: customappbar(),
      body: SafeArea(
        child: ListView(
          children:[
            Container(
              child: Column(
                  children: [
                    Center(

                      child: Container(
                        height:deviceSize.height*.09,
                        width: deviceSize.width*.95,
                      child:Center(
                          child:Container(
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Icon(Icons.menu_sharp),
                                    Icon(Icons.search_rounded),
                                  ]
                              )
                          )),
                    ),
                    ),
                    SizedBox(
                      height: deviceSize.height*.01,
                    ),
                    Center(
                      child:Container(
                        height:deviceSize.height*.14,
                        width: deviceSize.width*.95,
                        decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius:BorderRadius.circular(5),
                        ),
                        child:Stack(
                          children:[

                            Positioned(
                                top:14,
                                left:1 ,
                                child:Container(
                                  width: deviceSize.width*.25,
                                  height:deviceSize.height*.10,
                                  decoration: BoxDecoration(
                                      color:Colors.red,
                                      shape:BoxShape.circle
                                  ),
                                )
                            ),
                            Positioned(
                                left:95 ,
                                top:20,
                                width:deviceSize.width*.4,
                                height: deviceSize.height*.16,
                                child:Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text('Nawazuddin Siddique',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black)),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Text('Delhi College of Arts',style: TextStyle(fontSize: 10,color: Colors.black),),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Text('B.Tech (Computer Science)',style: TextStyle(fontSize: 10,color: Colors.black)),

                                        ],
                                      ),
                                    ],
                                  ),
                                ) ),
                            Positioned(
                              top:17,
                              right:35 ,
                              width: deviceSize.width*.3,
                              height: deviceSize.height*.12,
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                        width: deviceSize.width*.29,
                                        height: deviceSize.height*.04,
                                        decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(5),
                                            border:Border.all(
                                                color:Colors.black45,
                                                width: 2
                                            )),
                                        child:Row(
                                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('25',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                                            Text('Tests Assigned'),
                                          ],
                                        )
                                    ),
                                    SizedBox(
                                      height:5,
                                    ),
                                    Container(
                                      width: deviceSize.width*.29,
                                      height: deviceSize.height*.04,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(5),
                                        border:Border.all(
                                            color:Colors.black45,
                                            width: 2),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('40',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                          Text('Teammates',)
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top:10,
                              right: 10,
                              child: Container(
                                child: Row(
                                    children:[Icon(Icons.edit_road_rounded)
                                    ]
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height:5,
                    ),

                    // ===NAME OF NIWAZUDDIN  HELLOO====================================================

                      Container(
                        child: Row(
                              children: [
                                SizedBox(
                                  width: deviceSize.width*.03,
                                ),
                                Text('HELLO',style:TextStyle(fontSize: 27,color: Colors.black)),
                                Text(',Niwazuddin!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.black))
                              ]
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                      Center(
                        child: Container(
                            width:deviceSize.width*.95,
                            height: deviceSize.height*.26,
                            child: Column(
                              children: [
                                Row(
                                  children:[
                                    _gridContainer('Exams',Icons.my_library_books,Colors.orange[200]),
                                    SizedBox(
                                      width:10,
                                    ),
                                    _gridContainer('Disscussions',Icons.comment_bank,Colors.green[200]),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [

                                    _gridContainer('Bookmark',Icons.bookmark,Colors.purple[200]),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    _gridContainer('Teachers',Icons.desktop_windows,Colors.pink[200]),

                                  ],
                                )
                              ],
                            )
                        ),
                      ),

                      Container(
                        height: deviceSize.height*.05,
                        width: deviceSize.width*.95,
                        child:  Center(
                          child: Text(
                              'Recently Assigned Tests',
                              style:TextStyle(fontSize: 27,fontWeight:FontWeight.w300 )
                          ),
                        )

                    ),
                    GridBox('Angular JS (Test & Deploy)','Brain Mentor Pvt.Ltd.','03,12,2020','Basic',.255,.95),
                   SizedBox(height: 3,),
                  Container(
                    width: deviceSize.width*.95,
                    height: deviceSize.height*.05,
                    child: Row(
                      children: [
                        Text('Assigned Tests',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        _SizedBox(),
                        _text('Featured Topics'),
                        _SizedBox(),
                        _text('Resources'),
                        _SizedBox(),
                        _text('Live Sessions'),
                        _SizedBox(),
                        _text('Mock Tests')
                      ],
                    ),
                  )
                  ],
              ),
            )
          ]
        ),
      ),

    );
  }
}
