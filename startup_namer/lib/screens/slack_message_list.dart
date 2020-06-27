import 'package:flutter/material.dart';

class _SlackMessageItem extends StatelessWidget {
  final String text;
  final String author;

  _SlackMessageItem({this.text, this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
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
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
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

/// This is the stateless widget that the main application instantiates.
class SlackMessageListScreen extends StatelessWidget {
  SlackMessageListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: [
        _SlackMessageItem(
          author: "tetsuo.yamamoto",
          text: 'ここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がする'
        ),
        _SlackMessageItem(
          author: "tetsuo.yamamoto",
          text: 'ここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がするここの文字はもう少し小さくした方がいい気がする'
        ),
      ],
    );
  }
}
