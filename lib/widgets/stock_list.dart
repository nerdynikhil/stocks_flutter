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
      itemBuilder: (context, index) {

        final stock =stocks[index];

        return ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("${stock.symbol}",style: TextStyle(color: Colors.white, fontSize: 24,
              fontWeight: FontWeight.w500),),
              Text("${stock.company}",style: TextStyle(color: Colors.grey, fontSize: 20,
                  fontWeight: FontWeight.w500),),
            ],
          ),
          trailing: Column(children: [
            Text("${stock.price}",style: TextStyle(color: Colors.white, fontSize: 24,
                fontWeight: FontWeight.w500),),
            Container(
              child: Text("-1.02%", style: TextStyle(
                color: Colors.white
              ),),
              width: 75,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red
              ),
            )
          ],),
        );
      },
      itemCount: stocks.length,
    );
  }
}
