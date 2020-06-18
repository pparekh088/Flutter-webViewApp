import 'package:flutter/material.dart';

class WebViewForm extends StatefulWidget{
  @override 
  MyCustomFormState createState(){
    return MyCustomFormState();
  }
}
    
class MyCustomFormState extends State<WebViewForm> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value){
              if(value.isEmpty){
                return 'Please provide the url';
              }
              return null;
            }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(onPressed: (){
              if(_formKey.currentState.validate()){

              }
            }),
          )
        ],
      ),
    );
  }
}