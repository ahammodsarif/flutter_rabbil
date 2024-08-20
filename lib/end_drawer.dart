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
      theme: ThemeData(primarySwatch: Colors.brown),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      color: Colors.orange,
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Inventory_App.2"),
        titleSpacing: 20,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          fontFamily: 'Roboto',
        ),
        backgroundColor: Colors.cyanAccent,
        toolbarOpacity: 0.8,
        toolbarHeight: 80,
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Search Buttton", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is Person Button", context);}, icon: Icon(Icons.person)),
          IconButton(onPressed: (){MySnackBar("This is message Button", context);}, icon: Icon(Icons.message)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        onPressed: (){
          MySnackBar("This is floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.lime,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Call"),
        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("This is Home Button", context);
          }
          if(index == 1){
            MySnackBar("This is Setting Button", context);
          }
          if(index == 2){
            MySnackBar("This is Call Button", context);
          }
        },
      ),


      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text(
                    "Ahammod Sarif",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  accountEmail: Text(
                    "ahammodtannababu@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.limeAccent,
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 10,
                    ),
                  ),
                  currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsALO5bgLpufyb9XWPkphMXf6U46gOal1Ww&s",
                    scale: 1.0,
                    //color: Colors.white,
                    height: 100.0,
                    fit: BoxFit.cover,
                    width: 100.0,
                    alignment: Alignment.center,
                    cacheHeight: 100,
                    cacheWidth: 100,
                    opacity: AlwaysStoppedAnimation(0.9),
                  ),

                  // onDetailsPressed: (){MySnackBar("This is Profile", context);},

                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home,
                  size: 30.0,
                  //weight: FontWeight.bold,
                  color: Colors.green,
                  textDirection: TextDirection.ltr,
                  fill: 1.0,
                  grade: 0.0,
                  applyTextScaling: true,
                  opticalSize: 24.0,
                  semanticLabel: 'Home Icon',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black45,
                    )
                  ],
                ),
                onTap: (){
                  MySnackBar("Home", context);
                },
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.contact_emergency),
                onTap: (){
                  MySnackBar("Contact", context);
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: (){
                  MySnackBar("Profile", context);
                },
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.email),
                onTap: (){
                  MySnackBar("Email", context);
                },
              ),
              ListTile(
                title: Text("Phone"),
                leading: Icon(Icons.phone),
                onTap: (){
                  MySnackBar("Phone", context);
                },
              ),
            ],
          )
      ),



      endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text(
                    "Ahammod Sarif",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  accountEmail: Text(
                    "ahammodtannababu@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.limeAccent,
                      textBaseline: TextBaseline.alphabetic,
                      fontSize: 10,
                    ),
                  ),
                  currentAccountPicture: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcsALO5bgLpufyb9XWPkphMXf6U46gOal1Ww&s",
                    scale: 1.0,
                    //color: Colors.white,
                    height: 100.0,
                    fit: BoxFit.cover,
                    width: 100.0,
                    alignment: Alignment.center,
                    cacheHeight: 100,
                    cacheWidth: 100,
                    opacity: AlwaysStoppedAnimation(0.9),
                  ),

                  // onDetailsPressed: (){MySnackBar("This is Profile", context);},

                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home,
                  size: 30.0,
                  //weight: FontWeight.bold,
                  color: Colors.green,
                  textDirection: TextDirection.ltr,
                  fill: 1.0,
                  grade: 0.0,
                  applyTextScaling: true,
                  opticalSize: 24.0,
                  semanticLabel: 'Home Icon',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black45,
                    )
                  ],
                ),
                onTap: (){
                  MySnackBar("Home", context);
                },
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.contact_emergency),
                onTap: (){
                  MySnackBar("Contact", context);
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: (){
                  MySnackBar("Profile", context);
                },
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.email),
                onTap: (){
                  MySnackBar("Email", context);
                },
              ),
              ListTile(
                title: Text("Phone"),
                leading: Icon(Icons.phone),
                onTap: (){
                  MySnackBar("Phone", context);
                },
              ),
            ],
          )
      ),
    );
  }
}

