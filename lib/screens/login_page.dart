import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:tradeofffinal/screens/registration_page.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Scaffold(
          backgroundColor: Colors.blue[200],
          body: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            children: [
              const SizedBox(height: 20.0),
              Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 60.0),
              Image.asset(
                "assets/logo.png",
                height: 200.0,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 10.0),
              const Center(
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Log into your account and get started!',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'email', Icons.account_box)),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: field(
                      size,
                      'password',
                      Icons.lock,
                    ),
                  )),
              SizedBox(height: size.height / 20),
              button(size),
              SizedBox(height: size.height / 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Dont have an Account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  /*    GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (_) => RegisterPage()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                )*/
                ],
              )
            ],
          ),
        ));
  }

  Widget button(Size size) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height / 14,
        width: size.width / 1.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        alignment: Alignment.center,
        child: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  Widget field(Size size, String hintText, IconData icon) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.2,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
