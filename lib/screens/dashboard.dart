import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:todoapp/screens/Login_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Neeraj Maurya',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                  Text('MOB52',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                  Text('neeraj.maurya@mobcoder.com',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.amber[500],
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Tasks'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Users'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),

            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      drawerScrimColor: Color(0xFFf5851f),
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(top:10,bottom: 10),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(FontAwesomeIcons.th,size: 30,color: Color(0xFFf45d27),),tooltip: 'Dashboard', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))),
              IconButton(icon: Icon(FontAwesomeIcons.tasks,size: 30,color: Color(0xFFf45d27),),tooltip: 'Tasks', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))),
              IconButton(icon: Icon(FontAwesomeIcons.users,size: 30,color: Color(0xFFf45d27),),tooltip: 'Users', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))),
              IconButton(icon: Icon(FontAwesomeIcons.idBadge,size: 30,color: Color(0xFFf45d27),),tooltip: 'Profile', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()))),
            ],
          ),
        ),
      ),
      body:Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GradientCard(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red[900],Colors.red[200]]
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.dashcube,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('INFO          ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Things To Do',style: TextStyle(color: Colors.white,fontSize: 10),),
                        SizedBox(height: 20,),
                        Icon(FontAwesomeIcons.server,size: 66,color: Colors.white,)

                      ],
                    ),
                  ),
                ),
                GradientCard(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.green[900],Colors.green[200]]
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.tasks,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('TASKS      ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Things To Do',style: TextStyle(color: Colors.white,fontSize: 12),),
                        SizedBox(height: 20,),
                        Icon(FontAwesomeIcons.thumbtack,size: 66,color: Colors.white,)

                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GradientCard(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue[900],Colors.blue[200]]
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.users,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('USERS       ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Check Users',style: TextStyle(color: Colors.white,fontSize: 12),),
                        SizedBox(height: 20,),
                        Icon(FontAwesomeIcons.addressBook,size: 66,color: Colors.white,)



                      ],
                    ),
                  ),
                ),
                GradientCard(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.amber[900],Colors.amber[200]]
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.idBadge,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('PROFILE  ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('Manage Your Profile',style: TextStyle(color: Colors.white,fontSize: 12),),
                        SizedBox(height: 10,),

                        Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Icon(FontAwesomeIcons.user,size: 66,color: Colors.white,)
                          ],
                        )

                      ],
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      )
    );
  }
}
