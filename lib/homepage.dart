import 'package:finance_app/budget.dart';
import 'package:finance_app/compound.dart';
import 'package:finance_app/convert.dart';
import 'package:finance_app/emi.dart';
import 'package:finance_app/main.dart';
import 'package:finance_app/timevalue.dart';
import 'package:flutter/material.dart';
import 'simple.dart';
import 'compound.dart';
import 'timevalue.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: body(),
      ),
    ));
  }
}

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            'Finance App',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 22,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: Column(
        children:
         <Widget>[
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //ROW 1
            children: [
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                  
                 
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          child: Image(
                            image: AssetImage('images/money-bag.png'),
                            
                          ),
                          onPressed: () {
                            print('hello');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return emi();
                              }),
                            );
                          },
                        ),
                      ),
                    ),
                    Text(
                      'EMI Calculator',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return convert();
                              }),
                            );
                          },
                          child: Image(
                            image: AssetImage('images/exchange.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Currency Calculator',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //ROW 2
            children: [
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return timevalue();
                              }),
                            );
                          },
                          child: Image(
                            image: AssetImage('images/time-is-money.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Time Value of Money',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return simple();
                              }),
                            );
                          },
                          child: Image(
                            image: AssetImage('images/calculator.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Simple Interest',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //ROW 1
            children: [
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return compound();
                              }),
                            );
                          },
                          child: Image(
                            image: AssetImage('images/budget.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Compound Interest',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 170,
                // margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Budget();
                              }),
                            );
                          },
                          child: Image(
                            image: AssetImage('images/budgett.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Budget Tracker',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) {
              //       return simple();
              //     }),
              //   );
              // },
//               child: Text(
//                 'Simple Interest',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) {
//                     return compound();
//                   }),
//                 );
//               },
//               child: Text(
//                 'Compound Interest',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
//               onPressed: () {},
//               child: Text(
//                 'Risk and Return',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
//               onPressed: () {},
//               child: Text(
//                 'Stock Valuation',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
//               onPressed: () {},
//               child: Text(
//                 'Bond valuation',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: Container(
//             // width: double.infinity,
//             child: FlatButton(
//               color: Color.fromARGB(221, 109, 104, 104),
//               splashColor: Colors.deepOrange,
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) {
//                     return timevalue();
//                   }),
//                 );
//               },
//               child: Text(
//                 'Time Value of Money',
//                 style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: 18,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
