import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=> new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: SafeArea(
          child:ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 80.0,),
              Column(
                children:<Widget>[
                  Image.asset('assets/diamond.png'),
                  SizedBox(height: 14.0,),
                  Text('FENGKEYI')
                ]
              ),
              SizedBox(height:120.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'username'
                ),
              ),
              SizedBox(height: 12.0,),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'password'
                ),
                obscureText: true,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed:(){
                      _passwordController.clear();
                      _usernameController.clear();
                    },
                    child: Text('CANCEL'),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('SURE'),
                  )
                ],
              )

            ],
          )
      ),
    );
  }

}

