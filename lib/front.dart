import 'package:finance_app/homepage.dart';
import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
// color: Color.fromARGB(255, 22, 58, 56),

class front extends StatelessWidget {
  const front({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Center(
                  child: SizedBox(
                    height:200,
                    width: 800,
                    child: Image(
                      image: AssetImage('images/office.png'),
                      
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Financial Calculator',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                    minimumSize: Size(150, 50),
                    primary: pc,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return homepage();
                      }),
                    );
                  },
                  child: Icon(Icons.arrow_right_alt_outlined, size: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// image: AssetImage('images/man.png'),