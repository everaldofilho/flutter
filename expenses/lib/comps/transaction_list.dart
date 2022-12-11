import 'package:expenses/comps/transaction_view.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transations;
  final void Function(String) onRemove;

  const TransactionList(this.transations, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return transations.isEmpty || transations.length <= 0
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Nenhuma transação cadastrada!",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          })
        : ListView.builder(
            itemCount: transations.length,
            itemBuilder: (ctx, index) {
              final tr = transations[index];
              return TransactionView(
                id: tr.id.toString(),
                title: tr.title.toString(),
                value: tr.value,
                date: tr.date,
                onRemove: onRemove,
              );
            },
          );
  }
}
