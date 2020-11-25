import 'package:flutter/material.dart';
import 'package:octo_assignment/api_services/stock_api_services.dart';
import 'package:octo_assignment/models/stock.dart';
import 'package:octo_assignment/widgets/stock_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "Stocks",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text(
                "November 24",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(16)))),
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Stock>>(
                  future: getAllStocks(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError)
                      return Center(child: Text('${snapshot.error}'));
                    if (snapshot.hasData) {
                      return StockList(stocks: snapshot.data);
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
