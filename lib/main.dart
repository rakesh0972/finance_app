import 'package:finance_app/compound.dart';
import 'package:finance_app/convert.dart';
import 'package:finance_app/front.dart';
import 'package:finance_app/future.dart';
import 'package:finance_app/present.dart';
import 'package:finance_app/timevalue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'simple.dart';
import 'compound.dart';
import 'homepage.dart';
import 'timevalue.dart';
import 'front.dart';
import 'future.dart';
import 'present.dart';
import 'presentannuity.dart';
import 'futureannuity.dart';
import 'budget.dart';
import 'convert.dart';
import 'emi.dart';

const pc = const Color.fromARGB(255, 51, 148, 118);
const sc = const Color.fromARGB(255, 33, 96, 93);
const tc = Color.fromARGB(255, 35, 80, 78);

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'poppins'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          // '/': (context) => front(),
          '/': (context) => front(),
          '/homepage': (context) => homepage(),
          '/simple': (context) => simple(),
          '/compound': (context) => compound(),
          '/timevalue': (context) => timevalue(),
          '/present': (context) => present(),
          '/future': (context) => future(),
          'presentannuity': (context) => presentannuity(),
          'futureannuity': (context) => futureannuity(),
          'emi': (context) => emi(),
          'convert': (context) => convert(),
          'budget': (context) => Budget(),
        });
  }
}
