import 'package:flutter/material.dart';
import 'package:score_app/main.dart';

class MySecondPage extends StatelessWidget {
  static const page2 = "/secondPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ListTile(
              title: Center(child: Text("Team Menu")),
              textColor: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name your match',
                ),
              ),
            ),

            const Text("Create Two Teams"),

            //Center(child: Text(message)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, MyFirstPage.homePage);
              },
              child: const Text('Back'),
            )
          ],
        ));
  }
}
