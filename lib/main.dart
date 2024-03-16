
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/login_screen.dart';
import 'firebase_options.dart';
import 'package:myapp2/screens/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      initialRoute: '/', // Définissez la route initiale
      routes: {
        '/': (context) => LoginScreen(), // Page de connexion comme route initiale
        '/home': (context) => HomePage(), // Page d'accueil comme route nommée
      },
    );
  }
}