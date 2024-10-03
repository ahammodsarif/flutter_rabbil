import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rabbil/body.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      color: Colors.blueGrey,
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
        title: Text("Inventory_App"),
        toolbarHeight: 80,
        toolbarOpacity: 0.9,
        titleSpacing: 20,
        elevation: 50,
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

      body: Container(
        // alignment: Alignment.center,
        // margin: EdgeInsets.all(30),
        // padding: EdgeInsets.all(40),
        // decoration: BoxDecoration(
        //   color: Colors.blue,
        //   border: Border.all(color: Colors.black, width: 5),

        alignment: Alignment.center,
        height: 400,
        width: 500,
        margin: EdgeInsets.all(100),
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
        color: Colors.blue,
          border: Border.all(color: Colors.black, width: 5),
        ),
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s"),
      ),
    );
  }
}

