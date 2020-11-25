import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octo_assignment/models/stock.dart';

class StockList extends StatelessWidget {
  final List<Stock> stocks;

  StockList({this.stocks});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(color: Colors.grey[400]);
      },
      padding: const EdgeInsets.symmetric(horizontal: 6),
      itemBuilder: (context, index) {
        final stock = stocks[index];
        return ListTile(
            title: Text("${stock.symbol}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            subtitle: Text("${stock.symbol}",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("${stock.basevalue.toStringAsFixed(2)}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Material(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: Text(
                      "-1.02%",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red)
            ]));
      },
      itemCount: stocks.length,
    );
  }
}
