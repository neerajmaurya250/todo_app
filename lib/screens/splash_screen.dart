import 'package:flutter/material.dart';
import 'package:todoapp/screens/Login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> _checkForSession() async {
    await Future.delayed(Duration(seconds: 3), () {});
    return true;
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _navigateToLogin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    super.initState();
    _checkForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [Colors.amber[900], Colors.amber[800]])),
        child: Center(
            child: Image.asset(
          "assets/todo.png",
          height: 150,
          width: 150,
        )),
      ),
    );
  }
}
