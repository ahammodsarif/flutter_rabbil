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
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.yellow),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
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
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce App"),
        titleTextStyle: TextStyle(
          color: Colors.cyanAccent,
            fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,
        toolbarOpacity: 0.9,
        toolbarHeight: 120,
        elevation: 20,
        shadowColor: Colors.pink,

        actions: [
          IconButton(onPressed: (){MySnackBar("This is Home Button", context);}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){MySnackBar("This is Message Button", context);}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){MySnackBar("This is Setting Button", context);}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent,
        onPressed: (){
          MySnackBar("This is Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
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

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),

                  accountName: Text("Ahmed Tanna",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.limeAccent,
                  ),
                  ),
                  accountEmail: Text("ahammodtannababu@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.limeAccent,
                  ),
                  ),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s",
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
              title: Text("Home"), leading: Icon(
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
              onTap: (){
                MySnackBar("This is Home", context);
              },
            ),
            ListTile(
              title: Text("Setting"),leading: Icon(Icons.settings),

              onTap: (){
                MySnackBar("This is Setting", context);
              },
            ),
            ListTile(
              title: Text("Person"),leading: Icon(Icons.person),
              
              onTap: (){
                MySnackBar("This is Person", context);
              },
            ),
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
                  accountName: Text("Ahmed Tanna"), 
                  accountEmail: Text("ahammodtannabubu@gmail.com"),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}