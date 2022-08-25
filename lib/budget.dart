// import 'dart:ffi';
import 'package:finance_app/budget_repository.dart';
import 'package:finance_app/failure_model.dart';
import 'package:finance_app/homepage.dart';
import 'package:finance_app/item_model.dart';
import 'package:finance_app/spending_chart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'homepage.dart';

// void main(){
//   // await dotenv.load(fileName: '.env');
//   runApp(MyApp());
// }

class Budget extends StatelessWidget {
  const Budget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BudgetScreen(),
    );
  }
}

class BudgetScreen extends StatefulWidget {
  BudgetScreen({Key? key}) : super(key: key);

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  @override
  late Future<List<Item>> _futureItems;

  void initState() {
    super.initState();
    _futureItems = BudgetRepository().getItems();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return homepage();
                              }),
                            );
            },
          ),
          title: Text(
            'Budget Tracker',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
        ),
        
      body: RefreshIndicator(
        onRefresh: () async {
          _futureItems = BudgetRepository().getItems();
          setState(() {});
        },
        child: FutureBuilder<List<Item>>(
          future: _futureItems,
          
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //asds
              final items = snapshot.data!;
              return ListView.builder(
                itemCount: items.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if(index==0) return SpendingChart(items: items);
                  final item = items[index];
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 2.0,
                        color: getCategoryColor(item.category),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(item.name),
                      subtitle: Text(
                        '${item.category} • ${DateFormat.yMd().format(item.date)}',

                        
                      ),
                      trailing: Text(
                        '-\Rs ${item.price.toStringAsFixed(2)}',
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              // Show failure error message.
              final failure = snapshot.error as Failure;
              return Center(child: Text(failure.message));
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

Color getCategoryColor(String category) {
  switch (category) {
    case 'Entertainment':
      return Colors.red[400]!;
    case 'Food':
      return Colors.green[400]!;
    case 'Personal':
      return Colors.blue[400]!;
    case 'Transportation':
      return Colors.purple[400]!;
    default:
      return Colors.orange[400]!;
  }
}
