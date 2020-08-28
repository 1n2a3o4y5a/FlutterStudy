import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: Text('YouTubeクローン'),
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(
                    Icons.search,
                    color: Colors.red,
                ),
                onPressed: () {

                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.network(
                        'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s100-c-k-c0xffffffff-no-rj-mo'
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Column(
                      children: [
                        Text('KboyのFlutter大学'),
                        FlatButton(
                          child: Row(
                            children: [
                              Text('登録する'),
                              Icon(
                                  Icons.add_alert,
                                  color: Colors.red,
                              ),
                            ],
                          ),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child:ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetaiPage()),
                        );
                      },
                      leading: Image.network(
                          'https://yt3.ggpht.com/a/AATXAJzTTrCl3cb1V2IoZ2h9-me3BXqwolvXElKMT74b=s100-c-k-c0xffffffff-no-rj-mo'
                      ),
                      title: Column(
                        children: [
                          Text(
                            'ヤッホヤッホヤッホヤッホヤッホヤッホ${items[index]}',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                  '100回再生',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                              ),
                              Text(
                                  '５日前',
                                  style: TextStyle(
                                    fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


