import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:todoapp/screens/Register_Page.dart';
import 'package:todoapp/screens/bottom.dart';
import 'package:todoapp/services/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String email;
  String password;
  ProgressDialog pr;

  @override
  void initState() {
    pr = new ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: true, showLogs: false);
    pr.style(message: 'Please wait...');
    super.initState();
  }
  showProgressDialog(bool isShow){
    if(isShow){
      pr.show();
    } else {
      pr.hide();
    }
  }

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
                            "Login",
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
                          validator: (val) => val.isEmpty ? "Enter your email id" : null,
                          onChanged: (val){
                            setState(() {
                              email = val;
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
                        height: screenData.height * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ]),
                        child: TextFormField(
                          validator: (val) => val.isEmpty ? "Enter password" : null,
                          onChanged: (val){
                            setState(() {
                              password = val;
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
                      Align(
                          alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text("Forgot Password?"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.01,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bottom()));

                        },
                        child: SizedBox(
                          height: screenData.height * 0.07,
                          width: screenData.width * 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Color(0xFFf45d27), Color(0xFFf5851f)]),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                                child: Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenData.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(66, 103, 178, 1.0),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(219, 68, 55, 1.0),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                     SizedBox(height: screenData.height * 0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                            },
                            child: Container(
                              child: Text(
                                " Register",
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

  loginClick() async{
    if(_formKey.currentState.validate()){
      showProgressDialog(true);
      dynamic result = await _auth.sigInWithEmailAndPassword(email, password);


    }
  }

}
