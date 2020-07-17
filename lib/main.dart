import 'package:flutter/material.dart';
import 'package:webViewApp/home_page.dart';
import 'package:webViewApp/web_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview application',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      initialRoute: '/',
      routes: {
        // // When navigating to the "/" route, build the FirstScreen widget.
        // '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/MyWebView': (context) => MyWebView()
      },
    );
  }
}
