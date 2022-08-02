import 'package:flutter/material.dart';

import 'loginpage.dart';

class Memo extends StatefulWidget {
  Memo({Key? key}) : super(key: key);

  @override
  State<Memo> createState() => _MemoState();
}

class _MemoState extends State<Memo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Texcon',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
                'This is where company-wide\nmessages could be displayed\nfor the supervisors\nto see before logging in.'),
            SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Text('Enter Login'),
            ),
          ],
        ),
      ),
    );
  }
}
