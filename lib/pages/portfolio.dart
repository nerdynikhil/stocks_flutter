import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width,
            child: Text(
                "You can selected any 10 stocks from the list to create a portfolio"),
          ),
        ),
        TextField(
            decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey[500]),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        )),
        
      ]),
    );
  }
}
