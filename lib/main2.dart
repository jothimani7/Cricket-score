
import 'package:flutter/material.dart';
import 'package:bulls/main3.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String opanent;
  TextEditingController opname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Match'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Enter Opanent Team Name:'),
              ),
              Container(
                child: TextField(
                  controller: opname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              RaisedButton(
                textColor: Colors.deepPurple,
                child: Text('Start Match'),
                onPressed: (){
                  opanent = opname.text;
                  print(opname.text);
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Match(opanent: opanent)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
