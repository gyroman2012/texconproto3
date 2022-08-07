import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'homepage.dart';
import 'timecard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> listof = [
    "Mike",
    "Carlos",
    "James",
    "Cuto",
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Employee List',
          style: TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => debugPrint("Add"),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('Search'),
          ),
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Memo()));
              }),
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: ListView.builder(
          itemBuilder: (_, int index) => listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class listDataItem extends StatelessWidget {
  String itemName;

  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => NewPage(),
              child: CircleAvatar(
                child: Text(itemName[0]),
              ),
            ),
            Expanded(
              child: Text(
                itemName,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            //SizedBox(width: 100),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                },
                child: Text('Time Card'),
              ),
            ),
            SizedBox(width: 400),
            Text('Done? '),
            ToggleSwitch(
              minWidth: 90.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.green[800]!],
                [Colors.red[800]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: ['YES', 'NO'],
              radiusStyle: true,
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ],
        ),
      ),
    );
  }
}
