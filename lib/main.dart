import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: SlimCard(),
));
class SlimCard extends StatefulWidget {
  @override
  _SlimCardState createState() => _SlimCardState();
}

class _SlimCardState extends State<SlimCard> {
  int expertlevel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Slimguy ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState(() {
              expertlevel +=1;
            });
          } ,
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
          ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/slimguy.jpg"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
            ),
            SizedBox(height: 10.0),
            Text(
              "SlimGuy",
                 style: TextStyle(
                   color: Colors.amberAccent[200],
                   letterSpacing: 2.0,
                   fontSize: 28.0,
                   fontWeight: FontWeight.bold,
                 ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT EXPERT LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$expertlevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "slimguy@gmail.com",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                      ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "+254712804802",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.place,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "Kenya",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


