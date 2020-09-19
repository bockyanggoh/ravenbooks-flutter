import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../library.dart';
import '../library.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> usernames;
  String username;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Text('Login', style: SharedConfig.titleStyle,),
                  Text('Welcome to Ravenclaw BookStore!', style: SharedConfig.descriptionStyle,)
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 25.0),
                    width: 250,
                    child:
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'One of the houses will gain you entry',
                        labelText: 'Username'
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter username';
                        }

                        if(!verifyUsername(value)) {
                          return 'Invalid username';
                        }
                        _formKey.currentState.save();
                        return null;
                      },
                      onSaved: (String value) {
                        this.username = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text('Submit', style: SharedConfig.generalTextStyle,),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.pushNamed(context, '/');
                        }
                      },
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  verifyUsername(String username) {
    if(usernames.contains(username.toLowerCase())) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    usernames = new List<String>();
    usernames.addAll({"ravenclaw", "hufflepuff", "gryffindor", "slytherin"});
  }
}