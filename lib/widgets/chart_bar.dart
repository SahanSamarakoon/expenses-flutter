import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String dayLable;
  final double amount;
  final double amtPct;

  const ChartBar(this.dayLable, this.amount, this.amtPct);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constrains) {
        return Column(
          children: [
            Container(
              height: constrains.maxHeight * 0.15,
              child: FittedBox(
                  child: Text(
                      '\$${double.parse((amount).toStringAsFixed(2)).toString()}')),
            ),
            SizedBox(
              height: constrains.maxHeight * 0.05,
            ),
            Container(
              height: constrains.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: amtPct,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: constrains.maxHeight * 0.05,
            ),
            Container(
              height: constrains.maxHeight * 0.15,
              child: FittedBox(child: Text('${dayLable.toString()}')),
            )
          ],
        );
      },
    );
  }
}
