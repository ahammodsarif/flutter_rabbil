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
    return  MaterialApp(
      title: "My First App",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      color: Colors.limeAccent,
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
    return  Scaffold(
      appBar: AppBar(
        title: Text("Inventory_App_2.0"),
        backgroundColor: Colors.grey,
        toolbarHeight: 90.5,
        toolbarOpacity: 0.9,
        titleSpacing: 20.3,
        centerTitle: true,
        shadowColor: Colors.purpleAccent,
        elevation: 30,
        // bottomOpacity: 0.5,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25.5,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          letterSpacing: 1.2,
          wordSpacing:2.0,
          shadows: [
            Shadow(
              offset: Offset(1.0,2.0),
              blurRadius: 3.0,
              color: Colors.tealAccent,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){MySnackBar("This is Search Button", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("This is Setting Button", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("This is Message Button", context);}, icon: Icon(Icons.message)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.lightGreenAccent,
        onPressed: (){
          MySnackBar("This is floating Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.teal,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar("This is Home Button", context);
          }
          if(index == 1){
            MySnackBar("This is Email Button", context);
          }
          if(index ==  2){
            MySnackBar("This is Person Button", context);
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
                    fontSize: 9,
                  ),
                ),
                currentAccountPicture: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s",
                  scale: 1.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                  width: 100.0,
                  alignment: Alignment.center,
                  cacheWidth: 100,
                  opacity: AlwaysStoppedAnimation(0.9),
                ),
              ),
            ),


            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,
                size: 30.0,
                color: Colors.tealAccent,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24.0,
                semanticLabel: "Home Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0,2.0),
                    blurRadius: 3.0,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
              onTap: (){
                MySnackBar("Home", context);
              },
            ),


            ListTile(title: Text("Contact"), leading: Icon(Icons.contact_emergency,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Contact", context);
              },
            ),


            ListTile(title: Text("Profile"), leading: Icon(Icons.person,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Profile", context);
              },
            ),


            ListTile(title:Text("Email"),leading: Icon(Icons.email,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
            onTap: (){
              MySnackBar("Email", context);
            },
            ),


            ListTile(title: Text("Phone"),leading: Icon(Icons.phone,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
            onTap: (){
              MySnackBar("Phone", context);
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
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "Ahmed Tanna",
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
                    fontSize: 9,
                  ),
                ),
                currentAccountPicture: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMivcJJS98hj4eq6J8QDEyZMldWfPqqzpA1A&s",
                  scale: 1.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                  width: 100.0,
                  alignment: Alignment.center,
                  cacheWidth: 100,
                  opacity: AlwaysStoppedAnimation(0.9),
                ),
              ),
            ),


            ListTile(
              title: Text("Home"), leading: Icon(Icons.home,
                size: 30.0,
                color: Colors.tealAccent,
                textDirection: TextDirection.ltr,
                fill: 1.0,
                grade: 0.0,
                applyTextScaling: true,
                opticalSize: 24.0,
                semanticLabel: "Home Icon",
                shadows: [
                  Shadow(
                    offset: Offset(2.0,2.0),
                    blurRadius: 3.0,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
              onTap: (){
                MySnackBar("Home", context);
              },
            ),


            ListTile(title: Text("Contact"), leading: Icon(Icons.contact_emergency,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Contact", context);
              },
            ),


            ListTile(title: Text("Profile"), leading: Icon(Icons.person,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Profile", context);
              },
            ),


            ListTile(title:Text("Email"),leading: Icon(Icons.email,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Email", context);
              },
            ),


            ListTile(title: Text("Phone"),leading: Icon(Icons.phone,
              size: 30.0,
              color: Colors.tealAccent,
              textDirection: TextDirection.ltr,
              fill: 1.0,
              grade: 0.0,
              applyTextScaling: true,
              opticalSize: 24.0,
              semanticLabel: "Home Icon",
              shadows: [
                Shadow(
                  offset: Offset(2.0,2.0),
                  blurRadius: 3.0,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
              onTap: (){
                MySnackBar("Phone", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}