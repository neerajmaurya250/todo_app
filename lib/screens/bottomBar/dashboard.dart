import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green[800],Colors.amber[200]],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft

          )
      ),

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
    );
  }
}
