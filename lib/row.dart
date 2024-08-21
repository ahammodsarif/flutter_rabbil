import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rabbil/bottom_navigation.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      color: Colors.black,
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData(primarySwatch: Colors.lightBlue),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        elevation : 10,
        backgroundColor: Colors.blue,
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            // padding: EdgeInsets.all(2),
            // margin: EdgeInsets.all(5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              //color: Colors.pinkAccent,
              border: Border.all(color: Colors.black87,width: 5),
            ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s"),),

          Container(
            // padding: EdgeInsets.all(2),
            // margin: EdgeInsets.all(5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              //color: Colors.pinkAccent,
              border: Border.all(color: Colors.black87,width: 5),
            ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s"),),

          Container(
            // padding: EdgeInsets.all(2),
            // margin: EdgeInsets.all(5),
            height: 100, width: 100,
            decoration: BoxDecoration(
              //color: Colors.pinkAccent,
              border: Border.all(color: Colors.black87,width: 5),
            ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s"),),
        ],
      ),
    );
  }
}


