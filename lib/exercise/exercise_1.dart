import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rabbil/alert_dialog.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My_App",
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      color: Colors.cyan,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

MySnackBar(message, context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        toolbarOpacity: 0.9,
        toolbarHeight: 70,
        titleTextStyle: TextStyle(
          color: Colors.lightGreenAccent,
          fontStyle: FontStyle.italic,
          fontSize: 30,
          fontFamily: "Roboto",
          fontWeight: FontWeight.bold,
        ),

        actions: [
          IconButton(onPressed: (){MySnackBar("This is Home Button", context);}, icon: Icon(Icons.home),),
          IconButton(onPressed: (){MySnackBar("This is Setting Button", context);}, icon: Icon(Icons.settings),),
          IconButton(onPressed: (){MySnackBar("This is Message Button", context);}, icon: Icon(Icons.message),),
        ],

        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 50,
        shadowColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ) ,
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        onPressed: (){
          MySnackBar("This is Floating Action Button", context);
        },

      ),
    );
  }
}