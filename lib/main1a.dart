

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
                  )
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
    playersList.add(result);
    setState(() {

    });
    // var names = playersList.map((players) => players.title).toList();
    // print(names);
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
  TextEditingController field = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPlayer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Enter Player Name',
                ),
              ),
              TextField(
                controller: field,
                decoration: InputDecoration(
                  labelText: 'Enter Player Field',
                ),
              ),
              ElevatedButton(
                child: Text('Add palyer'),
                onPressed: (){
                  // obj.title=name.text;
                  // obj.subtitle=field.text;
                  Navigator.pop(context,Players(title: name.text, subtitle: field.text));
                },
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

