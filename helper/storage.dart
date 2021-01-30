import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

import 'fileoperation.dart';
class Storage
{
  Storage._();

  static FirebaseStorage storage = FirebaseStorage.instance;
  static Reference ref = FirebaseStorage.instance.ref();

  static Future<String> downloadFile() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();

    File downloadToFile = File('${appDocDir.path}/cpp.json');
    try {
      await FirebaseStorage.instance
          .ref('cpp.json')
          .writeToFile(downloadToFile);
      return await FileOperation.readCounter();
    } on FirebaseException catch (e) {
      print('download unsuccessful');
      // e.g, e.code == 'canceled'
    }

  }

  static Future<String> downloadURL(url) async {
    String downloadURL = await FirebaseStorage.instance
        .ref(url)
        .getDownloadURL();
       return downloadURL;

  }





  Future<void> uploadExample() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String filePath = '${appDocDir.absolute}/file-to-upload.png';
    // ...
    // e.g. await uploadFile(filePath);
  }


 static Future<void> uploadFile(String filePath) async {
    File file = File(filePath);
    try {
      await FirebaseStorage.instance
          .ref('quizResult')
          .putFile(file);
    } on FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
    }
  }

}