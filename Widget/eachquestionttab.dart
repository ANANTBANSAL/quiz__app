import 'package:flutter/material.dart';
class EachQues extends StatefulWidget {
  final int text;
  final Color color;
  final  int ques;
  EachQues(this.text,this.color,this.ques);

  @override
  _EachQuesState createState() => _EachQuesState(text,color,ques);
}

class _EachQuesState extends State<EachQues> {
  final int text;
  final Color color;
    Color tabColor;
  final int ques;
  _EachQuesState(this.text,this.color,this.ques);
  _color()
  {
      if(text == ques && color!=null)
      {
        return( tabColor=color);
      }
      else
      {
        return (tabColor=Colors.grey);
      }
    }

  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: deviceSize.width*.02,
          ),
          Container(
              width:deviceSize.width*.07,
              height: deviceSize.height*.045,
              decoration:BoxDecoration(
                color:_color(),
                shape:BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text((text+1).toString(),style: TextStyle(color: Colors.white),),
              )
          ),
          SizedBox(
            height: deviceSize.height*.05,
          )
        ],
      ),
    );
  }
}

