import 'dart:math';

import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';

class emi extends StatelessWidget {
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
            'EMI',
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
  // String p = "", t = "", r = "", res = "", n = "";
  double p = 0, r = 0, n = 0;
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
              p = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Principle Loan Amount',
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
              labelText: 'Number of Months',
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
              r = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Rate of  Interest',
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
                ),
              ),
              onPressed: () {
                setState(() {
                  //  res = (double.parse(p)*(1 + double.parse(r) / double.parse(n)) * double.parse(n) * double.parse(t)).toString();
                  // res=(double.parse(p)+double.parse(t)+double.parse(r)+double.parse(n)).toString();
                  // double x=(1+double.parse(r)/double.parse(n));
                  // double y=double.parse(n)*double.parse(t);
                  // res = (double.parse(p)*pow(x, y)).toString();
                  //  res =
                  //     (double.parse(p) * double.parse(t) * double.parse(r) / 100)
                  //         .toString();
                  //
                  res = (p *
                          (r / 12 / 100) *
                          pow((1 + (r / 12 / 100)), n) /
                          (pow((1 + (r / 12 / 100)), n) - 1))
                      .toString();
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
                      'The result is $res',
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
