import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'singup_page.dart';
import 'forgotpassword_page.dart';
import 'dart:async';



class LoginPage extends StatelessWidget {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 100, 10, 0),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'MyApp',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login User',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'Email',

                    ),

                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
//                      icon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordpage()),
                    );
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'
                      ),
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: emailController.text,
                          textColor: Colors.white,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 1,
                          gravity: ToastGravity.TOP,
                          backgroundColor: Colors.indigo,
                        );
                        Fluttertoast.showToast(
                            msg: passwordController.text,
                          textColor: Colors.white,
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIos: 2,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.indigo,
                        );
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUppage()),

                            );
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
