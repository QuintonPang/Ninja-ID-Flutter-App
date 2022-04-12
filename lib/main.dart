import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            ninjaLevel++; // setState triggers rebuild, without setState it won't work
          });
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color:Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title:Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black87,
        elevation: 0.0, // make it more flat, remove drop shadow
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.black,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height:10.0), // a box with height of 10 pixels
            Text(
              'Chun-Li',
              style: TextStyle(
                color:Colors.amberAccent[400],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color:Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height:10.0), // a box with height of 10 pixels
            Text(
              // '10',
              '$ninjaLevel',
              style: TextStyle(
                color:Colors.amberAccent[400],
                letterSpacing: 1.5,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color:Colors.white,
                ),
                SizedBox(width:10.0),
                Text(
                    'chun-li@gmail.com',
                    style:TextStyle(
                      color:Colors.white,
                      fontSize: 18.0,
                      letterSpacing:1.0,
                    )
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
