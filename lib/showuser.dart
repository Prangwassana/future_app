import 'package:flutter/material.dart';
void main()=>runApp(ShowuserPage());


class ShowuserPage extends StatefulWidget {
  @override
  _ShowuserPageState createState() => _ShowuserPageState();
}

class _ShowuserPageState extends State<ShowuserPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: ()
    {
      Navigator.pop(context);
            },
            child: Text("Back"),
          ),
        ),
        appBar: AppBar(title:  Text("Show user"),),
      ),
    );
  }
}

