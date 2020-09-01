import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class SecondRoute extends StatelessWidget {
  SecondRoute(this.text);
  String text;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}