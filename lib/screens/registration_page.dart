import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';
import 'package:tradeofffinal/screens/main.dart';
import 'package:tradeofffinal/utils/validation.dart';
import 'package:tradeofffinal/widgets/indicator.dart';

class RegisterPage extends StatefulWidget {
  static String id = 'registration_page';

  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //final TextEditingController _name = TextEditingController();
  // final TextEditingController _email = TextEditingController();
  // final TextEditingController _idNo = TextEditingController();
  // final TextEditingController _pass = TextEditingController();
  // final TextEditingController _conpass = TextEditingController();
  String _name = "";
  String _email = "";
  String _idNo = "";
  String _pass = "";
  String _conpass = "";
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: isLoading
            ? Center(
                child: Container(
                  height: size.height / 20,
                  width: size.width / 20,
                  child: CircularProgressIndicator(),
                ),
              )
            : ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
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
                  const SizedBox(height: 80.0),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Welcome to Trade-Off',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontFamily: 'Roboto-Regular'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Create Account to connect!',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 20.0,
                          fontFamily: 'Roboto-Regular'),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    height: size.height / 15,
                    width: size.width / 1.2,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        _email = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  button(size)
                ],
              ),
      ),
    );
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
          'Sign up',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.2,
      child: TextField(
        controller: cont,
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
