import 'package:expense_processor/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(BaseWidget());

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expence tracker',
      home: _HomeScreenWidget(),
    );
  }
}

class _HomeScreenWidget extends StatelessWidget {
  _HomeScreenWidget();

  final tr = TransactionModel(
    id: 1,
    title: "title1",
    amount: 50,
    date: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expence tracker'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(8),
        //alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              color: Colors.redAccent,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(8),
                child: const Text(
                  'Card test text',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        tr.amount.toString(),
                        style: const TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tr.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          tr.date.toString(),
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
