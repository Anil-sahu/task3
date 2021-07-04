//import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import 'package:flutter/services.dart' show rootBundle;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Task2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "Please fill empty Area";
  bool clicked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
       // leading: Icon(Icons.account_box_outlined),
       
        title: Text("task 3"),
        leading: IconButton(
          icon:Icon(Icons.verified_user_rounded),
          onPressed: ()=>Scaffold.of(context).openDrawer(),
        ),
        backgroundColor:Color.fromRGBO(14, 28,3,1),
        
      ),
      drawer: Drawer(
      
        child: ListView(
          children: [
            DrawerHeader(
              
              child: Column(
                children: [
                  Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('assets/code.png'),

                    //decoration: BoxDecoration(color: Colors.blue
                  ),
                  Text(
                    "Hello! coder",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                
                ],
                
              ),
              
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text("User"),
              subtitle: Text("user"),
              trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(msg: "I am user",
                 toastLength:Toast.LENGTH_SHORT,
                 
                 backgroundColor:Colors.pink,
                 textColor: Colors.green,
                 
                 fontSize: 20,
                 );
               
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text("Home"),
              subtitle: Text("home"),
             /// trailing: Icon(Icons.edit_outlined),
              onTap: () {
                Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
              },
            ),
            Divider(
              color:Colors.blue,
              height: 20,
            ),
             ListTile(
              leading: Icon(Icons.settings_suggest_outlined),
              title: Text("Setting"),
              subtitle: Text("setting"),
             // trailing: Icon(Icons.edit_outlined),
              onTap: () {
                    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privacy"),
              subtitle: Text("privacy"),
             /// trailing: Icon(Icons.edit_outlined),
              onTap: () {    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );},
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              subtitle: Text("help"),
             // trailing: Icon(Icons.edit_outlined),
              onTap: () {
                    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
              },
            ),
            Divider(
              color: Colors.blue,
              height: 20,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black12,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  Expanded(
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2021/01/29/17/17/sky-5961642_1280.jpg"),
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2021/04/22/15/46/landscape-6199355_1280.jpg"),
                  ),
                  SizedBox(
                    height: 50,
                    width: 10,
                    child: Text("this is Sizebox"),
                  ),
                  Expanded(
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/14/14/43/flowers-4549084_1280.jpg"))
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Container(
              width: 300,
              //mainAxisAlignment: MainAxisAlignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   height: 350,
                  //   decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //       colors: [Colors.white, Colors.white70],
                  //     ),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Color.fromRGBO(3, 13, 2,1),
                  //         blurRadius: 5,
                  //         offset: Offset(2, 3),
                    //     ),
                    //   ],
                    // ),
                    TextField(
                      
                     // inputType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        border:OutlineInputBorder(),
                        fillColor:Colors.white70,
                        focusColor: Colors.greenAccent,
                        hoverColor:Colors.lime,
                        
                        labelText: "Name",
                       // icon: Icon(Icons.email_outlined),
                        hintText: "Please Enter your Email",
                        
                        
                      ),
                    
                    ),
                    
                  SizedBox(height:50,),
                  
                    TextField(
                     // inputType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        border:OutlineInputBorder(),
                        fillColor:Colors.red,
                       // focusColor: Colors.greenAccent,
                       // hoverColor:Colors.lime,
                        labelText: "password",
                        //icon: Icon(Icons.lock_clock_outlined),
                        hintText: "Password",
                        
                        
                      ),
                    
                    ),
                    SizedBox(
                      
                      height: 50,
                     child: Text(text,
                style: TextStyle(
                 
                  color: clicked ? Colors.red : Colors.green,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (clicked == true) {
                    text = "Login successful";
                    clicked = false;
                  } else if (clicked == false) {
                    text = "Login failed";
                    clicked = true;
                  }
                });
              },
              child: Text("Submit"),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//https://cdn.pixabay.com/photo/2021/01/29/17/17/sky-5961642_1280.jpg
//https://cdn.pixabay.com/photo/2019/10/14/14/43/flowers-4549084_1280.jpg
//https://cdn.pixabay.com/photo/2021/04/22/15/46/landscape-6199355_1280.jpg
