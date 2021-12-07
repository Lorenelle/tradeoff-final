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
      backgroundColor: Colors.blue,
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              //   alignment: Alignment.center,
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: () {
                onTap:
                () {
                  Navigator.pushNamed(context, LoginPage.id);
                };
                child:
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blueAccent),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Theme.of(context).accentColor,
                            Color(0xff597FDB),
                          ])),
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                child: Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blueAccent),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Theme.of(context).accentColor,
                            Color(0xff597FDB),
                          ])),
                  child: const Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
