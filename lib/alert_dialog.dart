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

      home: HomeActivity(),);
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  MyAlertDialog(context){
    return showDialog(context: context,
        builder: (BuildContext context){
      return Expanded(
          child: AlertDialog(
            title: Text("Alert!"),
            content: Text("Do you want to delete!"),
            actions: [
              TextButton(onPressed: (){
                MySnackBar("Delete Success", context);
                Navigator.of(context).pop();
                },child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No!")),
            ],
          )
      );

        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Inventory App"),
      ),
      body: Center(
        child: ElevatedButton(child: Text("Click Me"),onPressed: (){MyAlertDialog(context);},),
      ),
    );
  }
}                                                        