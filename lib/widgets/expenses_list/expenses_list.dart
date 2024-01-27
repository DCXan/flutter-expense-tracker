import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/models/expense.dart';
import 'package:flutter_expense_tracker/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: ((context, index) => Dismissible(
            background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(.8),
              margin: Theme.of(context).cardTheme.margin,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.delete),
                  )
                ],
              ),
            ),
            key: ValueKey(expenses[index]),
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(
              expenses[index],
            ),
          )),
    );
  }
}
