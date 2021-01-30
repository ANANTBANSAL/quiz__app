import 'package:flutter/material.dart';
import 'package:mvp_Quiz/Widget/appbar.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customappbar(),
    );
  }
}
