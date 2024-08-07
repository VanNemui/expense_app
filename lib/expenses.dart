import 'package:first_app/expenses_list.dart';
import 'package:first_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
      title: 'test 1',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.shopping,
    ),
    Expense(
      title: 'test 2',
      amount: 29.99,
      date: DateTime.now(),
      category: Category.market,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Hello Anh Van, Tháng 8 trộm vía trộm vía'),
          Text('The chart'),
          Text('Expense List...'),
          Expanded(
            child: ExpensesList(expenses: _registerExpenses),
          ),
        ],
      ),
    );
  }
}
