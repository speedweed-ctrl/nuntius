// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'login_page.dart';
import 'user_s.dart';
import 'main_page.dart';





Future<void>main() async {
  //this line is neccasary for the app to work while main is async
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  userState();

  runApp(const App());
}

/*void main(){
  runApp(const App());
}*/


int userState(){
  FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user){
    user == null ? debugPrint('no user'):debugPrint(user.email);
  });
  return 1;
}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login()
    );
  }
}