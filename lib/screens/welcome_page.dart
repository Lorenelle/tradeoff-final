import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeofffinal/screens/login_page.dart';
import 'package:tradeofffinal/screens/registration_page.dart';

class WelcomePage extends StatefulWidget {
  static String id = 'welcome_page';

  WelcomePage({Key? key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  )),
              const Text(
                'Trade-Off',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueAccent),
              ),
              SizedBox(height: 60.0),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Center(
                  child: Container(
                    height: 55.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Theme.of(context).accentColor,
                            Color(0xff597FDB),
                          ],
                        )),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Theme.of(context).accentColor,
                          Color(0xff597FDB),
                        ],
                      )),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegisterPage()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ])
            ]));
  }
}
