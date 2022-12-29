import 'package:flutter/material.dart';
import 'second_page.dart';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          MyFirstPage.homePage: (context) => MyFirstPage(),
          MySecondPage.page2: (context) =>  MySecondPage(),
        }
          );
  } 
}

class MyFirstPage extends StatelessWidget {
  static const homePage = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: const Center(child: Text("MyApp"))),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Center(child: Text('Volley-Ball Score')),
          ),
          //Center(child: Text("Volley-Ball Score")),
          ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, MySecondPage.page2);
        },
        child: Text('CREATE A MATCH'),
      ),
      ElevatedButton(
        onPressed: ()=> SystemNavigator.pop(),
        child: Text('QUIT'),
      )
        ],
      )
      
      );
  }
}


