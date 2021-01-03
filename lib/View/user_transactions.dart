import 'package:flutter/material.dart';
import './transaction_list.dart';
import './create_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTtansactions = [
    Transaction(id: '1', title: 'test 1', amount: 70, date: DateTime.now()),
    Transaction(id: '2', title: 'test 2', amount: 70, date: DateTime.now()),
    Transaction(id: '3', title: 'test 3', amount: 70, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTtansactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateTransaction(_addNewTransaction),
        TransactionList(_userTtansactions)
      ],
    );
  }
}
