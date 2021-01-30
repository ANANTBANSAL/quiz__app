import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mvp_Quiz/model/signup.dart';

class DbOperation
{
  static FirebaseFirestore dbRefenrence=FirebaseFirestore.instance;
  DbOperation._();
    static Future<String> add(Signup user)async{
      CollectionReference collectionReference=dbRefenrence.collection('login');
   Map<String,dynamic> map={
     'First Name':user.First_Name,
     'Last Name':user.Last_Name,
     'Phone_Number':user.Phone_Number,
     'Email_Address':user.Email_Adddress,
     'Password':user.Password  };
     await collectionReference.add(map);

    }
}



