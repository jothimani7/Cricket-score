import 'package:flutter/material.dart';
import 'package:bulls/matchdetail.dart';
import 'package:bulls/playernames.dart';
import 'package:flutter/rendering.dart';
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
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 200,height: 50),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  // textColor: Colors.green,
                  child: Text('New Match',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home2()));
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 200,height: 50),
                child: ElevatedButton(
                  // textColor: Colors.red,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  child: Text('Previous Matches',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 200,height: 50),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  // textColor: Colors.indigo,
                  // color: Colors.blueGrey,
                  child: Text('Players List',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlayersName()));
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



