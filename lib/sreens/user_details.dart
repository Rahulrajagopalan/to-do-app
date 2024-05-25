import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/sreens/fetch_users.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.luBlue,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          user.email,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: CustomColors.luBlack,
        bottom: PreferredSize(
          preferredSize: Size(0, 30),
          child: Text(
            "Hi there ${user.name}",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Email ID:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
            Text(
              user.email,
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
            Text(
              "Age:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
            Text(
              "${user.age}",
              style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
