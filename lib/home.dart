import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lst = [
    "Full Name",
    "Email",
    "Phone",
    "Adress",
    "Gender",
    "Date Of Birth"
  ];

  var info = [
    "User",
    "User@gmail.com",
    "+09000134655",
    "New York, Random Streeet House No.72",
    "Male",
    "October 13, 1999"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 100,
              child: Row(children: [
                Image.asset("assets/icon.png"),
                Column(
                  children: [
                    Text("User"),
                    Text("abc@gmail.com"),
                    Text("LogOut"),
                    Text("ACCOUNT INFORMATION"),
                  ],
                ),
              ]),
            ),
            ListView.builder(
              itemCount: lst.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(lst[index]),
                  subtitle: Text(info[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
