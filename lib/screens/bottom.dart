import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/screens/bottomBar/todo_list.dart';

import 'bottomBar/users.dart';
import 'bottomBar/dashboard.dart';
import 'bottomBar/profile.dart';

class Bottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomState();
  }
}
class BottomState extends State<Bottom> {
  int _selectedTab = 0;
  final _pageOptions = [
    Dashboard(),
    TodoList(),
    Users(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      appBar: AppBar(

        iconTheme: IconThemeData(color: Color(0xFFf45d27)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("//TODO",style: TextStyle(color: Color(0xFFf45d27),fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),),
        centerTitle: true,
        actions: <Widget>[
//          PopupMenuButton(itemBuilder: null,),
          IconButton(
            icon: Icon(Icons.more_vert,color: Color(0xFFf45d27),),
            tooltip: 'Show Snackbar',
            onPressed: () {
              //TODO popup out button
            },
          )
        ],

      ),

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.th,size: 30,color: Color(0xFFf45d27),),
              title: Text('Home', style: TextStyle(color: Colors.amber[900]),),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.tasks,size: 30,color: Color(0xFFf45d27),),
              title: Text('Tasks',style: TextStyle(color: Colors.amber[900]),),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.users,size: 30,color: Color(0xFFf45d27),),
              title: Text('   Users',style: TextStyle(color: Colors.amber[900]),),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.idBadge,size: 30,color: Color(0xFFf45d27),),
              title: Text('Profile',style: TextStyle(color: Colors.amber[900]),),
            ),
          ],
        ),

    );
  }}