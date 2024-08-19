import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rabbil/main.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        theme: ThemeData(primarySwatch: Colors.brown),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        color: Colors.cyan,
        home: HomeActivity());

  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce App"),
        backgroundColor: Colors.cyan,
        titleSpacing: 10,
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 10,
        toolbarOpacity: 0.9,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Message Button", context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("This is Setting Button", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("This is Search Button", context);}, icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
        onPressed: (){
          MySnackBar("This is floating Action Button", context);
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("This is Home Button", context);
          }
          if(index == 1){
            MySnackBar("This is Setting Button", context);
          }
          if(index == 2){
            MySnackBar("This is Search Button", context);
          }
        },
      ),
    );

  }

}