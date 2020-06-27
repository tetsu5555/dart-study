import 'package:flutter/material.dart';

import 'package:startup_namer/components/utils.dart';

// これだとエラーになる。何でだろう？
// import '../components/utils.dart';

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
            child: Image.network('$image'),
          ),
          SpaceHorizontal(size: 8),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$author',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SpaceVertical(size: 8),
                Text('$text'),
                SpaceVertical(size: 8),
                Row(
                  children: <Widget>[
                    Image.network(
                      '$image',
                      height: 20,
                      width: 20,
                    ),
                    SpaceHorizontal(size: 8),
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

class SlackMessageList extends StatelessWidget {
  SlackMessageList({Key key}) : super(key: key);

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
    return new Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: items,
      ),
    );
  }
}

class SlackMessageListScreen extends StatelessWidget {
  SlackMessageListScreen({Key key}) : super(key: key);

  static const String _title = 'これはSlackです';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          elevation: 0.8,
        ),
        body: SlackMessageList(),
      );
  }
}
