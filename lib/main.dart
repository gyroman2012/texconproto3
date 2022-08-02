import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "xxxx",
        authDomain: "xxxx",
        projectId: "xxxx",
        storageBucket: "xxx",
        messagingSenderId: "xxxxx",
        appId: "xxxx"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Timesheet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Memo(),
    );
  }
}
