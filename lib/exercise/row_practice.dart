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
      title: "MyApp",
      theme: ThemeData(primaryColor: Colors.black),
      darkTheme: ThemeData(primaryColor: Colors.blue),
      color: Colors.amber,
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
        title: Text("Inventory_App"),
        toolbarHeight: 100,
        elevation: 20,
        shadowColor: Colors.black,
        toolbarOpacity: 0.9,
        titleSpacing: 10,
        centerTitle: true,
        toolbarTextStyle: TextStyle(
          color: Colors.cyanAccent,
          fontWeight: FontWeight.normal,

        ),
        titleTextStyle: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
            ),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s"),
          )
        ],
      ),

    );
  }
}



