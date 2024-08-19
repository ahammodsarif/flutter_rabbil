import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "My App",
        theme: ThemeData(primarySwatch: Colors.teal),
        darkTheme: ThemeData(primarySwatch: Colors.yellow),
        debugShowCheckedModeBanner: false,
        color: Colors.cyanAccent,

        home: HomeActivity());
  }
  
}

class HomeActivity extends StatelessWidget{
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
        backgroundColor: Colors.green,
        centerTitle: true,
        //titleSpacing: 50,
        toolbarOpacity: 0.9,
        toolbarHeight: 70,
        elevation: 0,
        title: Text("Inventory_App"),
        actions: [
          IconButton(onPressed: (){MySnackBar("I am message", context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am email", context);}, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        onPressed: (){
          MySnackBar("I am floating action button", context);
        },
      ),

    );
  }
}