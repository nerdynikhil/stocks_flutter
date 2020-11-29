import'package:flutter/material.dart';
import 'package:octo_assignment/api_services/stock_api_services.dart';
import 'package:octo_assignment/models/stock.dart';
import 'package:octo_assignment/pages/portfolio.dart';
import 'package:octo_assignment/widgets/stock_list.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("View your portfolio"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () async {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Portfolio()));

                },
                child: Icon(Icons.arrow_forward_ios)),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.98,
              child: Card(
                  elevation: 5,

                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('You can selected any 10 stocks',style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text('from the list to create a portfolio',style: TextStyle(color: Colors.white, fontSize: 25),),

                    ],
                  )

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
