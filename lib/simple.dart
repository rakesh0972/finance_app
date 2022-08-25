import 'dart:ffi';

import 'package:finance_app/main.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';
import 'package:fl_chart/fl_chart.dart';

class simple extends StatelessWidget {
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
            'Simple Interest',
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
  double p = 0 , t = 0, r = 0;
  String res = "";

  static get $p => null;

  static get $res => null;
late Map<String, double> data ;

// _BodyState(){

//   setState(() {
//      data = {
//   'Amount': p,
//   'Interest': double.parse(res),
// };
//   });
 
// }
 
  

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
              print(p);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Principal',
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
              t = double.parse(value);
              print(t);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Time',
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
              labelText: 'Interest',
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
                  // res =
                  //     (double.parse(p) * double.parse(t) * double.parse(r) / 100)
                  //         .toString();
                  res = (p * t * r / 100).toString();
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

          // Center(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     child: PieChart(
          //       PieChartData(
          //         sections: [data]

          //       ),
          //     ),

          //   ),
          // ),
          Container(
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
          ),
        ],
      ),
    );
  }
}

//   List<PieChartSectionData> data = [
//   PieChartSectionData(title: 'a', color: Colors.red, value: {p}  ),
//   PieChartSectionData(title: 'b', color: Colors.blue,value:50 ),
  
// ];





 


