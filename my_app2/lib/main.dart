import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

final myFocusNode = FocusNode();
String name;
final myController = TextEditingController();


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最初の画面'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText:'田中太郎'
              ),
              onChanged: (text) {
                name = text;
                print("First text field: $text");
              },
            ),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  hintText:'趣味',
              ),
            ),
            RaisedButton(
              child: Text('新規登録'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the user has entered by using the
                      // TextEditingController.
                      content: Text(myController.text),
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('次へ'),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage(),
                    )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
