import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red[800],Colors.amber[200]],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft

        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 180.0,
              width: 180.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage('https://i.stack.imgur.com/O1UBk.jpg'),
                  fit: BoxFit.cover,
                ),
                border:
                Border.all(color: Colors.green[900], width: 1.0),
                borderRadius:
                new BorderRadius.all(const Radius.circular(100.0)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Icon(FontAwesomeIcons.camera,color: Colors.green[800],),
          SizedBox(height: 20,),

          Text('Neeraj Maurya', style: TextStyle(fontSize: 50,color: Colors.white),),
          SizedBox(height: 20,),

          Text('MOB52', style: TextStyle(fontSize: 25,color: Colors.white),),
          SizedBox(height: 20,),

          Text('Flutter Trainee', style: TextStyle(fontSize: 20,color: Colors.white),),
          SizedBox(height: 20,),

          Text('Email: neeraj.maurya@mobcoder.com', style: TextStyle(fontSize: 20,color: Colors.white),),



        ],
      )
    );
  }
}
