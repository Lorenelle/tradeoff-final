import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tradeofffinal/screens/login_page.dart';
import 'package:tradeofffinal/screens/registration_page.dart';
import 'package:tradeofffinal/screens/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      theme: ThemeData(
        fontFamily: 'Balsamiq_Sans',
      ),
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
    );
  }
}
