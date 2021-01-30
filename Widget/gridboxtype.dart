import 'package:flutter/material.dart';
import 'package:mvp_Quiz/screen/examdetails.dart';
class GridBox extends StatelessWidget {
  GridBox(this.CourseName, this.Company, this.date,this.basedon,this.level,this.details, this.h,this.w,this.color);
  double w;
  double h;
  Color color;
  Map details;
  String CourseName,Company,date,level,basedon;
  @override
  Widget build(BuildContext context) {

    Size deviceSize=MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height*h,
      width: deviceSize.width*w,
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: MaterialButton(
        child: Stack(
          children: [
                Positioned(
                  left: 12,
                  top: 5,
                  child: Text(CourseName,style: TextStyle(fontSize:27,color: Colors.white),),),
                Positioned(
                  left: 12,
                 top: 37,
                  child: Text(Company,style: TextStyle(fontSize: 15,color: Colors.white),),),
                Positioned(
                  left: 12,
                  bottom:40,
                  child: Row(
                  children: [
                    Text('Date:',style: TextStyle(fontSize: 15,color: Colors.white),),
                    Text(date,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),),
               Positioned(
                 left: 12,
                 bottom: 18,
                 child:Row(
                   children: [
                     Text('Based On:',style: TextStyle(fontSize: 15,color: Colors.white),),
                     Text(basedon,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)

                   ],
                 ) ),
                Positioned(
                  right: 12,
                  bottom: 18,
                  child: Text(level,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                ),


          ],
        ),
        onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => Examdetails(details))
          );

        },
      ),




    );
  }
}