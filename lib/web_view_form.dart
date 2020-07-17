import 'package:flutter/material.dart';

class WebViewForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<WebViewForm> {
  final _formKey = GlobalKey<FormState>();
  String title = 'Web viwe';
  String url;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(validator: (value) {
            if (value.isEmpty) {
              return 'Please provide the url';
            }
            return null;
          }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(onPressed: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, '/MyWebView',
                    arguments: ScreenArguments(title, url));
              }
            }),
          )
        ],
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String url;

  ScreenArguments(this.title, this.url);
}
