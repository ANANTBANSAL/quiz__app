import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/eachquestionttab.dart';
class QuesTab extends StatefulWidget {
 final Color colors;
 final int  currentques;
 final int totalQuestion;
 final  Function nextQuestion;
 final  Function previousQuestion;
 final  Function submit;
  QuesTab(this.currentques,this.colors,this.nextQuestion,this.previousQuestion,this.submit,this.totalQuestion);
  @override
  _QuesTabState createState() => _QuesTabState(colors,currentques,nextQuestion,previousQuestion,submit,totalQuestion);
}
class _QuesTabState extends State<QuesTab> {
  final Color color;
  final int totalQuestion;
  final  int currentques;
  final  Function nextQuestion;
  final  Function previousQuestion;
  final  Function submit;
 _QuesTabState(this.color,this.currentques,this.nextQuestion,this.previousQuestion,this.submit,this.totalQuestion);

  _quesTab(int index)
  {
       print(color);
     return EachQues(index, color, currentques);
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height*.4,
        child: DraggableScrollableSheet(
          initialChildSize:0.4,
          minChildSize: 0.4,
          //maxChildSize:1,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                 height: deviceSize.height*.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top:Radius.circular(20)),
                  color: Colors.black87,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: deviceSize.height*.005,
                    ),
                    Center(
                        child:Container(
                          width: deviceSize.width*.12,
                          height: deviceSize.height*.005,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                          ),
                        )
                    ),
                    SizedBox(
                      height: deviceSize.height*.01,
                    ),
                    Center(
                      child:Text('Questions List',style: TextStyle(color: Colors.white,fontSize: 15),)
                    ),
                    Expanded
                      (
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: totalQuestion,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 10,
                        mainAxisSpacing: 10,
                      ),
                           itemBuilder:(context,index)
                           {
                            return _quesTab(index);
                           }
                       )
                    ),
                  Container(
                    width: deviceSize.width*.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                         width: deviceSize.width*0.26,
                          height: deviceSize.height*.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Colors.amber,
                          ),
                          child: MaterialButton(
                            child: Center(
                              child: Text('Previous',style: TextStyle(color: Colors.white,fontSize: 15),maxLines: 1,),
                            ),
                              onPressed:previousQuestion),
                        ),
                        Container(
                          width: deviceSize.width*0.25,
                          height: deviceSize.height*.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Colors.amber,
                          ),
                          child: MaterialButton(
                              child: Center(
                                child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                              onPressed:nextQuestion),
                        ),
                        Container(
                          width: deviceSize.width*0.25,
                          height: deviceSize.height*.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Colors.green,
                          ),
                          child: MaterialButton(
                              child: Center(
                                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                              onPressed:submit,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ],
                    ),

              ),
            );
          },
        )
    );
  }
}