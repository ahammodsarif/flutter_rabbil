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

  MySncakBar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        elevation: 10,
        backgroundColor: Colors.blue,
        titleSpacing: 10,
        toolbarHeight: 80,
        centerTitle: true,
        toolbarOpacity: 0.9,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),

        actions: [
          IconButton(onPressed: () {
            MySncakBar("This is Message Button", context);
          }, icon: Icon(Icons.message)),
          IconButton(onPressed: () {
            MySncakBar("This is Setting Button", context);
          }, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {
            MySncakBar("This is Search Button", context);
          }, icon: Icon(Icons.search)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,

        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,

        onPressed: () {
          MySncakBar("This is Floating Button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],

        onTap: (int index) {
          if (index == 0) {
            MySncakBar("This is Home Button", context);
          }
          if (index == 1) {
            MySncakBar("This is Setting Button", context);
          }
          if (index == 2) {
            MySncakBar("This is Search Button", context);
          }
        },
      ),

      body: Text("t"),
    );
  }
}