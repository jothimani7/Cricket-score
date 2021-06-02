
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bulls/main3.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  String opanent='',over,toss,tossWon,field;
  TextEditingController opname = TextEditingController();
  TextEditingController place = TextEditingController();
  List<String> tossWons=['We','Opanent'];
  List<String> tos=['Head','Tail'];
  List<String> overs=['6 Overs','8 Overs','10 Overs','12 Overs','14 Overs'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Match'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: TextField(
                    focusNode: DisableFocus(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: opname,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Openant name',
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextField(
                    focusNode: DisableFocus(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    controller: place,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Place',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.blueGrey,
                      // focusColor: Colors.blue,
                      icon: Icon(Icons.arrow_drop_down_circle),
                      underline: SizedBox(),
                      hint: Text('Choose overs'),
                      value: over,
                      onChanged: (newValue){
                        setState(() {
                          over = newValue;
                        });
                      },
                      items: overs.map((ovr){
                        return DropdownMenuItem(
                          child: new Text(ovr),
                          value: ovr,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.blueGrey,
                      // focusColor: Colors.blue,
                      icon: Icon(Icons.arrow_drop_down_circle),
                      underline: SizedBox(),
                      hint: Text('Choose Toss'),
                      value: toss,
                      onChanged: (newValue){
                        setState(() {
                          toss = newValue;
                        });
                      },
                      items: tos.map((ovr){
                        return DropdownMenuItem(
                          child: new Text(ovr),
                          value: ovr,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.blueGrey,
                      // focusColor: Colors.blue,
                      icon: Icon(Icons.arrow_drop_down_circle),
                      underline: SizedBox(),
                      hint: Text('Toss won by'),
                      value: tossWon,
                      onChanged: (newValue){
                        setState(() {
                          tossWon = newValue;
                        });
                      },
                      items: tossWons.map((val){
                        return DropdownMenuItem(
                          child: new Text(val),
                          value: val,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: Colors.blueGrey,
                      // focusColor: Colors.blue,
                      icon: Icon(Icons.arrow_drop_down_circle),
                      underline: SizedBox(),
                      hint: Text('Enter Field'),
                      value: field,
                      onChanged: (newValue){
                        setState(() {
                          field = newValue;
                        });
                      },
                      items: ['Batting','Bowling'].map((ovr){
                        return DropdownMenuItem(
                          child: new Text(ovr),
                          value: ovr,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 200,height: 65),
                      child: ElevatedButton(
                        style: ButtonStyle(

                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              side: BorderSide(color: Colors.blueAccent)
                            )
                          )
                        ),
                        child: Text('Start Match',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: (){
                          opanent = opname.text;
                          print(opname.text);
                          if(opname==null||opanent==''|| over==null|| toss==null|| tossWon==null|| field==null){
                            showDialog<String>(
                              context: context,
                              builder: (buildContext)=> AlertDialog(
                                title: const Text('Missed Field'),
                                content: const Text('Fill All Field'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: ()=> Navigator.pop(context,'Ok'),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              )
                            );
                            // Navigator.pop(context,"please fill all fields");
                          }
                          else {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Match(opanent: opanent,
                                        over: over,
                                        tos: toss,
                                        tossWon: tossWon,
                                        field: field)));
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue[300],
    );
  }
}


class DisableFocus extends FocusNode{
  @override
  bool consumeKeyboardToken(){
    return false;
  }
}
