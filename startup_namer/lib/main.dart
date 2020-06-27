import 'package:flutter/material.dart';

import './screens/slack_message_list.dart';
import './screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hogehoge",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SlackMessageListScreen()
    );
  }
}
