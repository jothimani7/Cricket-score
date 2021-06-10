

// import 'dart:developer';

import 'package:flutter/material.dart';
// import 'dart:convert';

class PlayersName extends StatefulWidget {
  // const PlayersName({Key key}) : super(key: key);

  @override
  _PlayersNameState createState() => _PlayersNameState();

}
class Players{
  String title,subtitle;
  Players({this.title,this.subtitle});

}

class _PlayersNameState extends State<PlayersName> {
  final List<Players> playersList=[];
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PLayers Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child:ListView.builder(
                  itemCount: playersList.length,
                  itemBuilder: (context,index) => PlayerCard(
                    title: playersList[index].title,
                    subtitle: playersList[index].subtitle,
                  ),
              ),
            ),
            ElevatedButton(
              // textColor: Colors.white60,
              // color: Colors.grey,
              child: Icon(Icons.add),
              onPressed: (){
                _navigateAndDisplay(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  void _navigateAndDisplay(BuildContext context) async{
    // _PlayersNameState obj = new _PlayersNameState();
    final result = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddPlayer()));
    if(result!=null)
    playersList.add(result);
    // print(result==null);
    setState(() {

    });
    var names = playersList.map((players) => players.title).toList();
    print(names);
  }

}


class AddPlayer extends StatefulWidget {
  // const AddPlayer({Key key}) : super(key: key);

  @override
  _AddPlayerState createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  // _PlayersNameState obj = new _PlayersNameState();
  Players obj = new Players();
  TextEditingController name = new TextEditingController();
  // TextEditingController field = new TextEditingController();
  String field;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPlayer'),
      ),
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: name,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Player name',
                    labelStyle: TextStyle(
                        color: Colors.white54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(10),
                width: 250,
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
                    hint: Text('Choose Field'),
                    value: field,
                    onChanged: (newValue){
                      setState(() {
                        field = newValue;
                      });
                    },
                    items: ['Batsman','Bowler','All-Rounder'].map((ovr){
                      return DropdownMenuItem(
                        child: new Text(ovr),
                        value: ovr,
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 50,width: 150),
                child: ElevatedButton(
                  child: Text('Add palyer',style: TextStyle(
                    fontSize: 18,
                  ),),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      )
                    ),
                  ),
                  onPressed: (){
                    // obj.title=name.text;
                    // obj.subtitle=field.text;
                    if(name.text!=''&&field!='')
                    Navigator.pop(context,Players(title: name.text, subtitle: field));
                    else {
                      Navigator.pop(context, null);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}







class PlayerCard extends StatelessWidget {
  // const PlayerCard({Key key}) : super(key: key);
  final String title;
  final String subtitle;
  PlayerCard({this.title,this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0
        ),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

