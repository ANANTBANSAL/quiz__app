import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/gridboxtype.dart';
import 'package:mvp_Quiz/model/user.dart';
import 'package:mvp_Quiz/screen/homepage.dart';
class AssignedTest extends StatefulWidget{
  user User;
  Map<String,dynamic> map ;
  int CourseCount;
  AssignedTest(this.map,this.CourseCount,this.User);
   @override
  _AssignedTestState createState() => _AssignedTestState(map,CourseCount,User);
}

class _AssignedTestState extends State<AssignedTest> {
  user User;
  Map<String,dynamic> map;
  int CourseCount;
  int listcolor=0;
  _AssignedTestState(this.map,this.CourseCount,this.User);
  List<Color> color=[Colors.orange,Colors.pink,Colors.blue];
  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    print(CourseCount);

    return Scaffold(
      appBar: customappbar(),
      body: Container(
        child: SafeArea(
          child: CustomScrollView(
            slivers:[
              SliverAppBar(
                leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
              ),
            SliverToBoxAdapter(
            child: SizedBox(
            height: deviceSize.height*.06,
              child:MaterialButton(
                child: Row(
                  children: [
                    Icon(Icons.arrow_left,size:40,),
                    Text('Back',style: TextStyle(color: Colors.black,),)
                  ],
                ),
                onPressed: ()
                {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (ctx) => HomePage(User)));

                },
              ),
            ),),
              SliverToBoxAdapter(

                child: SizedBox(
                  height: deviceSize.height*.01,
                ),
              ),             SliverList(
                 delegate:SliverChildBuilderDelegate((BuildContext context, int index) {
                   listcolor=(listcolor+1)%3;
                   return Container(
                       child: Column(
                         children: [
                           GridBox(map[index.toString()]['Course_Name'],
                               map[index.toString()]["Institute"],
                               map[index.toString()]["Date"],
                               map[index.toString()]["Based on"],
                               map[index.toString()]["level"],
                               map[index.toString()],
                               .255,.95,color[listcolor]),
                           SizedBox(
                             height: deviceSize.height*.01,
                           )
                         ],
                       ));
                 },
                     childCount: CourseCount,
             ),
             )
            ]

          ),
        ),
      ),
    );
  }
}
