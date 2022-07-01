import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyB055zyox-P9Jx1LcrC9D1DduQSagHJ9vo",
      authDomain: "mobile-shop-f0d3f.firebaseapp.com",
      projectId: "mobile-shop-f0d3f",
      storageBucket: "mobile-shop-f0d3f.appspot.com",
      messagingSenderId: "835872106633",
      appId: "1:835872106633:web:dabfffa6986f9e6008fe58",
    ));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Shop',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color.fromARGB(255, 4, 125, 141)),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
