import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rabbil/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.orange),
      color: Colors.blue,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      debugShowMaterialGrid: false,
      highContrastDarkTheme: ThemeData.dark(),
      highContrastTheme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        elevation: 50,
        titleSpacing: 20,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          fontFamily: "Roboto",
          fontStyle: FontStyle.italic,
        ),
        backgroundColor: Colors.tealAccent,
        toolbarOpacity: 0.9,
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("This is Home Button", context);
              },
              icon: Icon(Icons.home)),
          IconButton(
              onPressed: () {
                MySnackBar("This is Contact Info Button", context);
              },
              icon: Icon(Icons.contact_emergency)),
          IconButton(
              onPressed: () {
                MySnackBar("This is Setting Button", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackBar("This is Person Button", context);
              },
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: () {
                MySnackBar("This is Accessinility Button", context);
              },
              icon: Icon(Icons.accessibility)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
        onPressed: () {
          MySnackBar("This is Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.white54,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("This is Home Button", context);
          }
          if (index == 1) {
            MySnackBar("This is Search Button", context);
          }
          if (index == 2) {
            MySnackBar("This is Setting Button", context);
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
                  "Ahmed Tanna",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.limeAccent,
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
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s",
                  scale: 1,
                  height: 100,
                  fit: BoxFit.cover,
                  width: 100,
                  alignment: Alignment.center,
                  cacheWidth: 100,
                  cacheHeight: 100,
                  opacity: AlwaysStoppedAnimation(0.9),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                size: 30,
                color: Colors.black,
                textDirection: TextDirection.ltr,
                fill: 1,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Home_Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Search"),
              leading: Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
                textDirection: TextDirection.ltr,
                fill: 1,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Search_Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.5,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              onTap: () {
                MySnackBar("Search", context);
              },
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(
                Icons.settings,
                size: 30,
                color: Colors.black,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Setting_Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),
              onTap: () {
                MySnackBar("Setting", context);
              },
            ),
            ListTile(
              title: Text("Person"),
              leading: Icon(
                Icons.person,
                size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Person_Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),
              onTap: () {
                MySnackBar("Person", context);
              },
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                accountName: Text(
                  "Ahmed Tanna",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                accountEmail: Text(
                  "ahammodtannababu@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 10,
                  ),
                ),
                currentAccountPicture: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s",
                  scale: 1,
                  height: 100,
                  fit: BoxFit.cover,
                  width: 100,
                  alignment: Alignment.center,
                  cacheHeight: 100,
                  cacheWidth: 100,
                  opacity: AlwaysStoppedAnimation(0.9),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Home_Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.person,
              size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Contact_Icon",

                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                  color: Colors.blueGrey,
                  ),
                ],
              ),
              onTap: (){
                MySnackBar("Contact", context);
              },
            ),
            ListTile(
              title: Text("Person"),
              leading: Icon(Icons.person,
              size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Person_Icon",

                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),

              onTap: (){
                MySnackBar("Person", context);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email,
              size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Email_Icon",

                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),

              onTap: (){
                MySnackBar("Email", context);
              },
            ),

            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.contact_emergency,
              size: 30,
                color: Colors.blueGrey,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24,
                semanticLabel: "Phone_Icon",

                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3,
                    color: Colors.blueGrey,
                  )
                ],
              ),
              onTap: (){
                MySnackBar("Phone", context);
              },
            )
          ],
        ),
      ),
    );
  }
}