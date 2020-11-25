import 'package:octo_assignment/models/stock.dart';
import 'package:http/http.dart' as http;

Future<List<Stock>> getAllStocks() async {
  try {
    final response = await http.get(
        'http://us-central1-stock-fantasy-fd46e.cloudfunctions.net/helloWorld');

    if (response.statusCode == 200) {
      return stockFromJson(response.body);
    } else
      return Future.error(response.body);
  } catch (e) {
    return Future.error('Could not connect to internet');
  }
}
