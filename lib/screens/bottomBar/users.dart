import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
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
backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage('https://www.coderzheaven.com/wp-content/uploads/2019/04/Flutter-Bottom-Navigation-Tabs.png'),          ),
                title: Text('User Name'),
                subtitle: Text('Email Id'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
