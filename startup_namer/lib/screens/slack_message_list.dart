import 'package:flutter/material.dart';

class _SlackMessageItem extends StatelessWidget {
  final String text;
  final String author;
  final String image;

  _SlackMessageItem({this.text, this.author, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
              child: Image.network('$image'),
            )
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  child: Text(
                    '$author',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                ),
                Padding(
                  child: Text('$text'),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                      child: Image.network(
                        '$image',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Text("コメントを開く")
                  ]
                )
              ]
            ),
          ),
        ]
      )
    );
  }
}

class SlackMessageListScreen extends StatelessWidget {
  SlackMessageListScreen({Key key}) : super(key: key);

  static const String _title = 'これはSlackです';

  final items = [
    _SlackMessageItem(
      author: "tetsuo.yamamoto",
      text: 'ここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がする',
      image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
    _SlackMessageItem(
      author: "tetsuo.yamamoto",
      text: 'ここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がする',
      image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
    ),
    _SlackMessageItem(
      author: "tetsuo.yamamoto",
      text: 'ここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がする',
      image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: items,
        )
      );
  }
}
