import 'dart:convert';

List<Stock> stockFromJson(String str) => List<Stock>.from(json.decode(str).map((x) => Stock.fromJson(x)));

String stockToJson(List<Stock> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Stock {
    Stock({
        this.symbol,
        this.basevalue,
    });

    String symbol;
    double basevalue;

    factory Stock.fromJson(Map<String, dynamic> json) => Stock(
        symbol: json["symbol"],
        basevalue: json["basevalue"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "basevalue": basevalue,
    };
}
