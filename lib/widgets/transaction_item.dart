import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transactions.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key key,
    @required this.transaction,
    @required this.deleteTransaction,
  }) : super(key: key);

  final Transactions transaction;
  final Function deleteTransaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FittedBox(
              child: Text("\$${transaction.price.toStringAsFixed(2)}"),
            ),
          ),
        ),
        title: Text(
          transaction.name,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(DateFormat.yMEd().format(DateTime.now())),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => deleteTransaction(transaction.id),
        ),
      ),
    );
  }
}
