import 'dart:io';

import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';

class convert extends StatefulWidget {
  convert({Key? key}) : super(key: key);

  @override
  State<convert> createState() => _convertState();
}

class _convertState extends State<convert> {
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
            'Currency Converter',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        body: body(),
      ),
    );
  }
}

class body extends StatefulWidget {
  body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  String selectedCurrency = 'USD';
  String selectedCurrency2 = 'USD';
  late double a;
  late double b;

  String cal = '';

  Widget build(BuildContext context) {
    bool show = false;
    if (cal.length > 0) {
      show = true;
    }
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DropdownButton<String>(
              value: selectedCurrency,
              items: [
                DropdownMenuItem(
                  child: Text('USD'),
                  value: 'USD',
                ),
                DropdownMenuItem(
                  child: Text('INR'),
                  value: 'INR',
                ),
                DropdownMenuItem(
                  child: Text('NPR'),
                  value: 'NPR',
                ),
                DropdownMenuItem(
                  child: Text('EUR'),
                  value: 'EUR',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value!;
                  print(value);
                });
                
              },
            ),
            Text(
              'to',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            DropdownButton<String>(
              value: selectedCurrency2,
              items: [
                DropdownMenuItem(
                  child: Text('USD'),
                  value: 'USD',
                ),
                DropdownMenuItem(
                  child: Text('INR'),
                  value: 'INR',
                ),
                DropdownMenuItem(
                  child: Text('NPR'),
                  value: 'NPR',
                ),
                DropdownMenuItem(
                  child: Text('EUR'),
                  value: 'EUR',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCurrency2 = value!;
                  print(value);
                });
              },
            ),
          ],
        ),
        SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              a = double.parse(value);
              print(a);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Amount',
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
                setState(
                  () {
                    if (selectedCurrency == 'NPR' && selectedCurrency2 == 'USD') {
                      cal = (a * 0.0080).toString();
                    } else if (selectedCurrency == 'NPR' &&
                        selectedCurrency2 == 'INR') {
                      cal = (a * 0.62).toString();
                    } else if (selectedCurrency == 'NPR' &&
                        selectedCurrency2 == 'EUR') {
                      cal = (a * 0.0075).toString();
                    } else if (selectedCurrency == 'USD' &&
                        selectedCurrency2 == 'NPR') {
                      cal = (a * 124.41).toString();
                    } else if (selectedCurrency == 'INR' &&
                        selectedCurrency2 == 'NPR') {
                      cal = (a * 1.60).toString();
                    } else if (selectedCurrency == 'EUR' &&
                        selectedCurrency2 == 'NPR') {
                      cal = (a * 133.37).toString();
                    }
                  },
                );
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
        ),
        SizedBox(height: 10),
        show
            ? Container(
                child: Text(
                  'The result is $cal ',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
