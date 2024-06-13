import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/sreens/fetch_users.dart';
import 'package:to_do_app/sreens/pdf_viewer.dart';
import 'package:to_do_app/sreens/user_details.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User user1 = User(name: "hari", age: 23, email: "ra@gmail.com");

  List users = [
    User(name: "Rahul", age: 20, email: "r@gmail.com"),
    User(name: "Radha", age: 21, email: "d@gmail.com"),
    User(name: "Krishna", age: 15, email: "k@gmail.com"),
    User(name: "Goutham", age: 30, email: "kl@gmail.com"),
    User(name: "Giri", age: 26, email: "l@gmail.com"),
    User(name: "Babu", age: 173, email: "s@gmail.com"),
    User(name: "Jayan", age: 31, email: "j@gmail.com"),
  ];

  printUser(){
    print(user1.toJson());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: CustomColors.luGrey,
            child: Icon(
              Icons.person,
              color: CustomColors.luBlack,
            ),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size(0, 30),
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.luGrey,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Text(
                  "Listed",
                  style: TextStyle(color: CustomColors.luBlack),
                ),
              ),
            )),
        title: Center(
            child: Text(
          'Users',
          style: TextStyle(color: CustomColors.luGrey),
        )),
        actions: [
          IconButton(
              onPressed: () {
                printUser();
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PDFViewer()));
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.red,
              ))
        ],
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
                      // print(user1.toJson());
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  UserDetails(user: users[index])));
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
