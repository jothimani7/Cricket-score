
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Match extends StatefulWidget {
  String opanent,over,tos,tossWon,field;
  Match({this.opanent,this.over,this.tos,this.tossWon,this.field});

  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match'),
      ),
      body: Container(
        child: Text(
          widget.opanent+"\n"+widget.field+"\n"+widget.tos+"\n"+widget.tossWon+"\n"+widget.over,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

