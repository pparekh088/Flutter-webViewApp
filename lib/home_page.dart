import 'package:flutter/material.dart';
import 'package:webViewApp/web_view_form.dart';

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Launch Web view')),
      body: WebViewForm()
    );
  }
}