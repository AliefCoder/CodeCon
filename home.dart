
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        color: Colors.orange[500],
      )
    );
  }
}
