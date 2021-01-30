import 'package:flutter/material.dart';
class CustomHAlfPageQ extends StatelessWidget {


  int questionNumber;
  String time;
  CustomHAlfPageQ(this.questionNumber,this.time);
  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    QuesNumber()
    {
      if(questionNumber<10)
        {
          String val='0'+questionNumber.toString();
          return val;
        }
      else{
        return questionNumber.toString();
      }
    }
    return Center(
      child: Container(
        width: deviceSize.width*0.95,
        height: deviceSize.height*0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom:Radius.circular(20)),
          color: Colors.orange[600],
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
                child: Icon(Icons.arrow_left,color: Colors.white,size: 50,)),

              Positioned(
                bottom:30,
                left: 10,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Question No.',style: TextStyle(fontSize: 25,color: Colors.white,),),
                      Text( QuesNumber(),style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white,),),
                     ],
                  ),
              ),
            Positioned(
              bottom:30,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(time.toString(),style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.white,),),
                  Text('(TIME LEFT)',style: TextStyle(fontSize: 15,color: Colors.white,),)
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
