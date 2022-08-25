import 'dart:math';

import 'package:finance_app/main.dart';
import 'package:finance_app/present.dart';
import 'package:finance_app/simple.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

import 'present.dart';

class presentannuity extends StatefulWidget {
  @override
  State<presentannuity> createState() => _presentState();
}

class _presentState extends State<presentannuity> {
  @override
  bool isSwitched = true;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              //  Navigator.pushNamed(context, '/homepage');
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Present Value of Annuity',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // String p = "", t = "", r = "", res = "";
  double f = 0, i = 0, n = 0;
  String res = "";

  @override
  Widget build(BuildContext context) {
    bool show = false;
    if (res.length > 0) {
      show = true;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              f = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'PMT',
              labelStyle: TextStyle(
                color: pc,
                fontSize: 18.0,
                fontFamily: 'poppins',
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              i = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Interest Rate',
              labelStyle: TextStyle(
                color: pc,
                fontSize: 18.0,
                fontFamily: 'poppins',
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              n = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Time Period',
              labelStyle: TextStyle(
                color: pc,
                fontSize: 18.0,
                fontFamily: 'poppins',
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  primary: sc,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  )),
              onPressed: () {
                setState(() {
                  // res = (f / (pow((1 + (i / 100)), n))).toString();
                  res = (f * (1 - (1 / pow((1 + i), n)) / i)).toString();
                });
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            child: show
                ? Center(
                    child: Text(
                      'The Present Value of Annuity is $res',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Container(),
          )
        ],
      ),
    );
  }
}
