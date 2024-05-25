import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/sreens/fetch_users.dart';
import 'package:to_do_app/sreens/user_details.dart';

import 'net_connection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List users = [
    User(name: "Rahul", age: 20, email: "r@gmail.com"),
    User(name: "Radha", age: 21, email: "d@gmail.com"),
    User(name: "Krishna", age: 15, email: "k@gmail.com"),
    User(name: "Goutham", age: 30, email: "kl@gmail.com"),
    User(name: "Giri", age: 26, email: "l@gmail.com"),
    User(name: "Babu", age: 13, email: "s@gmail.com"),
    User(name: "Jayan", age: 31, email: "j@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(preferredSize: Size(0, 30), child: Container(decoration: BoxDecoration(color: CustomColors.luGrey, borderRadius: BorderRadius.circular(5)),child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Text("Listed", style: TextStyle(color: CustomColors.luBlack),),
        ),)),
        title: Center(child: Text('Users', style: TextStyle(color: CustomColors.luGrey),)),
        backgroundColor: CustomColors.luBlack,
      ),
      body: Container(
        color: CustomColors.luBlack,
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: CustomColors.luBlue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      users[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    subtitle: Text(
                      users[index].email,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 15),
                    ),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: CustomColors.luBlack,
                        size: 30,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetails(user: users[index])));
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
