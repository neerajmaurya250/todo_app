import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
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
  child: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.green[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.green[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.green[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.green[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.red[500],
            ),
            title: Text('Task Name'),
            subtitle: Text('task details'),
          ),
        ),









      ],
    ),
  ),

    );
  }
}
