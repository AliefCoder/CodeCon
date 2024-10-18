// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[600],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange[500],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 215,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://media.istockphoto.com/id/1363368428/vector/girl-choosing-healthy-lifestyle-practicing-yoga-near-sport-equipment-vegetables.jpg?s=612x612&w=0&k=20&c=-7rVhlMhICKWc9sn6dTerBBg30_vr-_Ihpe80qV5Itk='),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 375,
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    labelText: 'Enter your email',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                    hintText: 'email',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 375,
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    labelText: 'Enter your password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )),
                    hintText: 'password',
                    hintStyle: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print('Login Button Pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[600],
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              height: 15.0,
              color: Colors.white,
            ),
            Text(
              'Or',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Divider(
              height: 15.0,
              color: Colors.white,
            ),
            ElevatedButton(
              onPressed: () {
                print('Google Login Button Pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    'https://image.similarpng.com/very-thumbnail/2020/06/Logo-google-icon-PNG.png',
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'by Google',
                    style: TextStyle(
                      fontSize: 12,
                    ),
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
