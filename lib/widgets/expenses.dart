import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Coffee',
      amount: 8.55,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Gas',
      amount: 37.89,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Insurance',
      amount: 200.00,
      date: DateTime.now(),
      category: Category.work,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 168, 151),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
