import 'package:flutter/material.dart';
import 'package:mvp_Quiz/model/user.dart';
class UserDrawer extends StatelessWidget {
  user User;
  UserDrawer(this.User);
  image()
  {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        elevation: 5,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orange),

                accountName: Text(
                  User.name,
                  style: TextStyle(fontSize: 22),
                ),
                accountEmail: Text(User.email))
          ],
        ),
      ),
    );
  }
}
