import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:io';
import 'package:mvp_Quiz/helper/storage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
import 'package:mvp_Quiz/Widget/customhalfpagequestion.dart';
import 'package:mvp_Quiz/Widget/questiontab.dart';
import 'package:mvp_Quiz/Widget/radiobutton.dart';
import 'package:mvp_Quiz/utils/server.dart';
import 'package:http/http.dart' as http;
class GetJsonQuestion extends StatefulWidget {
  String topic;
  GetJsonQuestion(this.topic);

  @override
  _GetJsonQuestionState createState() => _GetJsonQuestionState(topic);
}

class _GetJsonQuestionState extends State<GetJsonQuestion> {
  String topic;
  _GetJsonQuestionState(this.topic);
  String QuestionJson;
  List mydata;
 @override
  void initState() {
    // TODO: implement initState
   Future<String> courses=Storage.downloadURL(topic);
   courses.then((value) {
     Future<http.Response> future = Server.callServer(value);
     future.then((Response response) {
       setState((){ QuestionJson = response.body;
        mydata=convert.jsonDecode(QuestionJson);});
     }
     );
   }
   );

    super.initState();
  }

  load()
  {
    if(QuestionJson==null)
      {
        return Center(
          child: Text('loading'),
        );
      }
    else
       {
      //   void dispose()
      //   {
      //     dispose();
      //   }
      return QuizPage(mydata:mydata);
    }
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: load(),
    );
  }
}

class QuizPage extends StatefulWidget {
 final List mydata;
 QuizPage({Key key, @required this.mydata}) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState(mydata);
}
class _QuizPageState extends State<QuizPage> {
  String selectedvalue;
  final List mydata;
  Map myans={};
   Color quesTabColor;
  int count;
  int k;
  int seconds=30,min=30,hr=030;
  int timefortimer;
  String timetodisplay;
  String time;
  _QuizPageState(this.mydata);
  static const dur= Duration(seconds:1);
 void startTimer() {
    timefortimer=  ((hr*3600)+(min*60)+(seconds));
    Timer.periodic(dur, (Timer t) {
      setState(() {
        if(timefortimer<1)
          t.cancel();
        else if (timefortimer<60)
        {
          timefortimer--;
         timetodisplay=timefortimer.toString();

        }else if (timefortimer<3600)
        {
        int m=(timefortimer~/60);
        int s=timefortimer-(60*m);
          timefortimer--;
          timetodisplay=m.toString()+':'+s.toString();

        }
        else
        {
          int h =(timefortimer~/3600) ;
          int t=timefortimer-(3600*h);
          int m=(t~/60);
          int s=t -(60*m);
          timefortimer--;
          timetodisplay=h.toString()+':'+m.toString()+':'+s.toString();

        }
      });
    });
  }
  _previousQuestion()
  {
    setState(() {
      if(k==1)
      {
        k=count;
      }
      else
      {
        k--;
      }
      selectedvalue=myans[k];
    });

  }

  setSelectedValue(String val)
  {
    setState(() {
      selectedvalue=val;
      quesTabColor=Colors.green;
      myans[k]=val;
    });
    _quesTab();
  }
  _nextQuestion()
  {
    setState(() {
    quesTabColor=Colors.red;
    if(k<count)
    {
      k++;
    }
    else
      {
        k=1;
      }

    if(myans[k]!=null)
      selectedvalue=myans[k];
    else
      {
      selectedvalue='0';
      myans.addAll({k.toString():''});}
  });
    _quesTab();
  }
  submit() async
  {
    print(myans);
    List<Map> ansList = [];
    setState(() {
      ansList[0]= myans;
      List answerFile = json.decode(DefaultAssetBundle.of(context).loadString(
          "assets/answerFile/my_file.json").toString());
      print(answerFile);
      answerFile.add({'1':myans});
      // final filename = 'test.pdf';
      // var bytes = await rootBundle.load("assets/data/test.pdf");
      // String dir = (await getApplicationDocumentsDirectory()).path;
      print(answerFile[0]['1'] );
      print(ansList );
      Future<void> writeToFile(ByteData data, String path) {
        final buffer = data.buffer;
        return new File(path).writeAsBytes(
            buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
        Storage.uploadFile("assets/answerFile/my_file.json");
      }
      writeToFile(answerFile[0], "assets/answerFile/my_file.json");
    });
  }
  @override
void initState()
{
  super.initState();
  selectedvalue='0';
  k=1;
  count=mydata[0].length;
   startTimer();
}
  _quesTab()
  {
    return  QuesTab(k,quesTabColor,_nextQuestion,_previousQuestion,submit,count);
  }
  @override
  Widget build(BuildContext context) {
    Size deviceSize =MediaQuery.of(context).size;
    print(time);
    return WillPopScope(
      onWillPop: null,
      child: Scaffold(
        appBar: customappbar(),
        body: SafeArea(
            child:ListView(
              children: [
                Column(
                  children: [
                    CustomHAlfPageQ(k,timetodisplay),
                    SizedBox(
                      height: deviceSize.height*.01,
                    ),
                    Container(
                      width: deviceSize.width*.95,

                      child: Text(mydata[0][k.toString()],style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
                    ),
                 Container(
                   width: deviceSize.width*.95,
                   height: deviceSize.height*.29,
                   child: Column(
                     children: [
                   Row(
                       children:[
                        new RadioButton('a',selectedvalue,setSelectedValue),
                         Text(mydata[1][k.toString()]['a'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                       ]),
                    Row(
                      children: [
                       new  RadioButton('b',selectedvalue,setSelectedValue),
                        Text(mydata[1][k.toString()]['b'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      ]
                    ) ,
                       Row(
                         children: [
                         new  RadioButton('c',selectedvalue,setSelectedValue),
                           Text(mydata[1][k.toString()]['c'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                         ],
                       ),
                       Row(children: [
                         RadioButton('d',selectedvalue,setSelectedValue),
                         Text(mydata[1][k.toString()]['d'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                       ],)
                     ],
                   ),
                 ),
                    _quesTab(),
          ],
                ),

              ],
            )),
      ),
    );
  }
}
