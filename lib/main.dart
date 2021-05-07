import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Mycalcu());
}

class Mycalcu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: homePage(),
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  TextEditingController _numone = TextEditingController();
  TextEditingController _numtwo = TextEditingController();
  int sumtotal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CalCulatoR',
          style: TextStyle(
            color: Colors.brown[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(children: [
          TextField(
            controller: _numone,
            decoration: InputDecoration(
                hintText: 'XX',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.brown, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'NUM 1'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 50),
          TextField(
            controller: _numtwo,
            decoration: InputDecoration(
                hintText: 'XX',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.brown, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                labelText: 'NUM 2'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 100),
          Container(
            width: 200,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.yellow[50],
                border: Border.all(
                  color: Colors.brown[200],
                  width: 2,
                )),
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(children: [
                  Text(
                    'SUM :',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  SizedBox(width: 30),
                  Text(
                    '$sumtotal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 25),
                  ),
                ])),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sumtotal = int.parse(_numone.text) + int.parse(_numtwo.text);
          });
        },
        child: Text(
          '=',
          style: TextStyle(fontSize: 30.0, color: Colors.black),
        ),
        backgroundColor: Colors.amber[400],
      ),
    );
  }
}
