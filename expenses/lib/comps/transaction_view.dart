import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionView extends StatelessWidget {
  final String id;
  final String title;
  final double value;
  final DateTime date;
  final void Function(String) onRemove;

  TransactionView({
    required this.id,
    required this.title,
    required this.value,
    required this.date,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 5.0,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: FittedBox(child: Text('R\$${value}')),
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(DateFormat("d MM y").format(date)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () => onRemove(id),
        ),
      ),
    );
  }
}
