import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mvp_Quiz/screen/quizpage.dart';

class GetJson extends StatelessWidget {

  String topic='cpp';
  //GetJson(this.topic);
  String assettoload;


  setasset() {
      assettoload = "assets/quesjsoncpp.json";
    }

  @override
  Widget build(BuildContext context) {
    setasset();
    return FutureBuilder(
      future:DefaultAssetBundle.of(context).loadString("assets/quesjsoncpp.json",cache: false),
      builder: (context,snapshot){
        List mydata=json.decode(snapshot.data.toString());
        if(mydata==null) {
          return Scaffold(
                        body: Center(
                         child: Text(
                        "Loading",
                        ),
                        ),
                        );
                        } else {
                            return Text(mydata.toString());
                                      }
  },
    );
  }
}
