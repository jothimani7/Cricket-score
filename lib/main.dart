import 'package:flutter/material.dart';
import 'package:bulls/main2.dart';
import 'package:bulls/main1a.dart';
void main() =>runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('11-Bulls'),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                textColor: Colors.green,
                child: Text('New Match'),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home2()));
                },
              ),
              RaisedButton(
                textColor: Colors.red,
                child: Text('Previous Matches'),
                onPressed: null,
              ),
              RaisedButton(
                textColor: Colors.indigo,
                color: Colors.blueGrey,
                child: Text('Players List'),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayersName()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}



