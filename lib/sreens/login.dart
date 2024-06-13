import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
enum Gender { male, female }

class _LoginState extends State<Login> {
  Gender? gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Name"),),
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Email"),),
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Password"),),
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Confirm"),),
            ListTile(
              title: const Text('Male'),
              leading: Radio<Gender>(
                value: Gender.male,
                groupValue: gender,
                onChanged: (Gender? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Female'),
              leading: Radio<Gender>(
                value: Gender.female,
                groupValue: gender,
                onChanged: (Gender? value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
