
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Match extends StatefulWidget {
  String opanent='';
  Match({this.opanent});

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
          widget.opanent
        ),
      ),
    );
  }
}

