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
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.lightBlue),
      color: Colors.pinkAccent,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

   MySnackBar(message, context){
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message)),
     );
   }


   final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
     padding: EdgeInsets.all(25),
     backgroundColor: Colors.green,
     foregroundColor: Colors.white,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.all(Radius.circular(5))
     )
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Inventory App"),
        elevation: 50,
        backgroundColor: Colors.pinkAccent,
        toolbarHeight: 100,
        toolbarOpacity: 0.9,
        centerTitle: true,
        titleSpacing: 10,
        toolbarTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.pinkAccent,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: (){
                MySnackBar("I am Text Button", context);
                },
              child: Text("Text Button")),

          ElevatedButton(
              onPressed: (){
                MySnackBar("I am Elevated Button", context);
                },
              style: buttonStyle,
              child: Text("Elevated Button")),

          OutlinedButton(
              onPressed: (){
                MySnackBar("I am Outlined Button", context);
                },
              child: Text("Outlined Button")),
        ],
      ),
    );
  }
}