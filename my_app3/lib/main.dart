import 'package:flutter/material.dart';
import 'package:my_app3/main_model.dart';
import 'package:provider/provider.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String kboyText = 'ヤッホヤッホ';
  String text = 'aaaaaaaa';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('アプリ'),
          ),
          body: Consumer<MainModel>(
            builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Center(child: Text(model.kboyText)),
                    RaisedButton(
                      child: Text('変化'),
                      onPressed: () {
                        model.changeKboyText();
                      },
                    ),
                    RaisedButton(
                      child: Text('遷移'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute(text)),
                        );
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}

