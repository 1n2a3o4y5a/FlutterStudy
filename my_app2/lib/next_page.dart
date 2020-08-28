import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次の画面'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
            Container(
              child: Container(
                child: Row(
                  children: [
                    Text('Item 1'),
                    Text('Item 2'),
                    Text('Item 3'),
                    Container(
                      child: Column(
                        children: [
                          Text('Item 1'),
                          Text('Item 2'),
                          Text('Item 3'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}