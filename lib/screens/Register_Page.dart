import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/auth/auth_services.dart';
import 'package:todoapp/screens/Login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  String error = '';
  String name = '';
  String email = '';
  String empId = '';
  String password = '';
  int user;

  @override
  Widget build(BuildContext context) {
    var screenData = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: screenData.height * 0.4,
                width: screenData.width * 1.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFf45d27), Color(0xFFf5851f)]),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: screenData.height * 0.14,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/todo.png",
                          height: 80,
                          width: 80,
                        )),
                    Spacer(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24, bottom: 25),
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ]),
                        child: TextFormField(
                          validator: (val) => val.isEmpty ? 'Enter name' : null,
                          onChanged: (val){
                            setState(() {
                              name=val;
                            });
                          },
                          cursorColor: Color(0xFFf5851f),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Full Name',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ]),
                        child: TextFormField(
                          validator: (val) => val.isEmpty ? 'Enter email' : null,
                          onChanged: (val){
                            setState(() {
                              email=val;
                            });
                          },
                          cursorColor: Color(0xFFf5851f),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ]),
                        child: TextFormField(
                          validator: (val) => val.isEmpty ? 'Enter EmpId' : null,
                          onChanged: (val){
                            setState(() {
                              empId=val;
                            });
                          },
                          cursorColor: Color(0xFFf5851f),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                FontAwesomeIcons.idBadge,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Employee ID',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ]),
                        child: TextFormField(
                          validator: (val) => val.length < 6 ? 'Enter Strong password' : null,
                          onChanged: (val){
                            setState(() {
                              password=val;
                            });
                          },
                          obscureText: true,
                          cursorColor: Color(0xFFf5851f),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2.0),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 2.0),
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.04,
                      ),
                      SizedBox(
                        height: screenData.height * 0.07,
                        width: screenData.width * 1.0,
                        child: GestureDetector(
                          /*onTap: () async{
                            if(_formKey.currentState.validate()){
                              dynamic result = await _auth.registerWithEmailAndPassword(email, password, name, empId);
                              if(result == null){
                                setState(() {
                                  error = 'Supply email';
                                });
                              }else{
                                showToast('Registered');
                                Navigator.pop(context);
                              }
                            }
                          },*/
                          onTap: onRegisterClick,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Color(0xFFf45d27), Color(0xFFf5851f)]),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                                child: Text(
                              "REGISTER",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.01,
                      ),
                      SizedBox(
                        height: screenData.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Container(
                              child: Text(
                                " Login",
                                style: TextStyle(color: Color(0xFFf45d27)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onRegisterClick() async{
    if(_formKey.currentState.validate()){
       await _auth.registerWithEmailAndPassword(email, password, name, empId, user);
      Navigator.pop(context);
    }
  }
  /*void showToast(String msg, {int duration, int gravity}) {
    Toast.s how(msg, context, duration: duration, gravity: gravity);
  }*/
}
