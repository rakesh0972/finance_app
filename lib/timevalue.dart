import 'package:finance_app/future.dart';
import 'package:finance_app/futureannuity.dart';
import 'package:finance_app/main.dart';
import 'package:finance_app/present.dart';
import 'package:finance_app/presentannuity.dart';
import 'package:flutter/material.dart';
import 'present.dart';
import 'future.dart';
import 'presentannuity.dart';
import 'futureannuity.dart';

class timevalue extends StatelessWidget {
  @override
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
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Time Value of Money',
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
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:10),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: double.infinity,
            child: FlatButton(
              color: Color.fromARGB(221, 109, 104, 104),
              splashColor: pc,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return present();
                  }),
                );
              },
              child: Text(
                'Present Value',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: double.infinity,
            child: FlatButton(
              color: Color.fromARGB(221, 109, 104, 104),
              splashColor: pc,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return future();
                  }),
                );
              },
              child: Text(
                'Future Value',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: double.infinity,
            child: FlatButton(
              color: Color.fromARGB(221, 109, 104, 104),
              splashColor: pc,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return presentannuity();
                  }),
                );
              },
              child: Text(
                'Present Value of Annuity',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            width: double.infinity,
            child: FlatButton(
              color: Color.fromARGB(221, 109, 104, 104),
              splashColor: pc,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return futureannuity();
                  }),
                );
              },
              child: Text(
                'Future value of Annuity',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
