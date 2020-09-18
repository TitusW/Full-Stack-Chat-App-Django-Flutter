import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  //
  LoginScreen() : super();

  static const String ROUTE_ID = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //
  TextEditingController _usernameController;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    _usernameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Let's Chat"),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            TextField(
                controller: _usernameController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(20.0),
                )),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              child: Text('LOGIN'),
              onPressed: () {
                //
              },
            )
          ]),
        ));
  }
}
