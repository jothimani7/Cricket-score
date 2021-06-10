import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Match extends StatefulWidget {
  String opanent, over, tos, tossWon, field;

  Match({this.opanent, this.over, this.tos, this.tossWon, this.field});

  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  bool wide = false, nb = false, by = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
          child: ConstrainedBox(

            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height/1.2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.pink[100],
                  height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 10, 0.0, 0.0),
                    // mainAxisAlignment: MainAxisAlignment.center,
                    child:
                    Table(
                      // border: TableBorder.all(),
                      columnWidths: const <int, TableColumnWidth>{
                        0: FlexColumnWidth(2.5)
                      },
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.top,
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Container(
                              height: 45,
                              child: Text('Players'),
                              alignment: Alignment.center,
                              // color: Colors.white,
                            ),
                            Container(
                              height: 40,
                              child: Text('R'),
                              alignment: Alignment.center,
                              color: Colors.redAccent,
                            ),
                            Container(
                              height: 40,
                              child: Text('B'),
                              alignment: Alignment.center,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              height: 40,
                              child: Text('4s'),
                              alignment: Alignment.center,
                              color: Colors.greenAccent,
                            ),
                            Container(
                              height: 40,
                              child: Text('6s'),
                              alignment: Alignment.center,
                              color: Colors.white,
                            ),
                            Container(
                              height: 40,
                              child: Text('SR'),
                              alignment: Alignment.center,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Container(
                              height: 34,
                              color: Colors.white,
                            ),
                            Container(
                              height: 44,
                              color: Colors.redAccent,
                            ),
                            Container(
                              height: 44,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              height: 44,
                              color: Colors.greenAccent,
                            ),
                            Container(
                              height: 44,
                              color: Colors.white,
                            ),
                            Container(
                              height: 45,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        TableRow(
                          children: <Widget>[
                            Container(
                              height: 34,
                              color: Colors.white,
                            ),
                            Container(
                              height: 45,
                              color: Colors.redAccent,
                            ),
                            Container(
                              height: 45,
                              color: Colors.blueAccent,
                            ),
                            Container(
                              height: 45,
                              color: Colors.greenAccent,
                            ),
                            Container(
                              height: 45,
                              color: Colors.white,
                            ),
                            Container(
                              height: 45,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Wide',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          new Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              value: this.wide,
                              onChanged: (value) {
                                setState(() {
                                  wide = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'No-Ball',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          new Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              value: this.nb,
                              onChanged: (value) {
                                setState(() {
                                  nb = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Bice',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          new Transform.scale(
                            scale: 1.5,
                            child: Checkbox(
                              value: this.by,
                              onChanged: (value) {
                                setState(() {
                                  by = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn1',
                        child: Text(
                          '0',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn2',
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn3',
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn4',
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn5',
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                    Expanded(
                      child: new FloatingActionButton(
                        heroTag: 'btn6',
                        child: Text(
                          '6',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: new Transform.scale(
                          scale: 1.4,
                          child: new FloatingActionButton(
                            heroTag: 'undo',
                            backgroundColor: Colors.orangeAccent,
                            child: Icon(Icons.undo_rounded),
                            onPressed: null,
                          ),
                        ),
                      ),
                      Expanded(
                        child: new Transform.scale(
                          scale: 1.3,
                          child: new FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            heroTag: 'Out',
                            child: Text(
                              'Out',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            onPressed: null,
                          ),
                        ),
                      ),
                      Expanded(
                        child: new Transform.scale(
                          scale: 1.3,
                          child: new FloatingActionButton(
                            backgroundColor: Colors.redAccent,
                            heroTag: 'r_out',
                            child: Text(
                              'Run\nOut',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            onPressed: null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
