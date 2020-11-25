import 'package:flutter/material.dart';
import 'package:octo_assignment/models/stock.dart';
import 'package:octo_assignment/widgets/stock_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stocks",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("November 24",style: TextStyle(color: Colors.grey[400], fontSize: 15, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          prefix: Icon(Icons.search, color: Colors.white,),
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1, style: BorderStyle.none
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      //height: MediaQuery.of(context).size.height*0.3,
                      child: StockList(stocks: Stock.getAll()))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
