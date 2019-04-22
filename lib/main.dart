import 'package:flutter/material.dart';
import './login_screen.dart';
import './signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Welcome to Ting',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'OpenSansRegular'),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .93,
              height: 55,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()),
                  );
                },
                color: Colors.white,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color.fromRGBO(25, 164, 153, 1),
                    fontFamily: 'OpenSansRegular',
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .93,
              height: 55,
              child: OutlineButton(
                borderSide: BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    28.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()),
                  );
                },
                color: Color.fromRGBO(25, 164, 153, 1),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSansRegular',
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
