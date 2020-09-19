import 'package:bookstore_flutter/model/model.dart';
import 'package:bookstore_flutter/model/purchase.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  String mockBase = "";
  String base = "http://10.0.2.2:8080";
  String username = "ravenclaw";

  Future<List<BookCatalogueRecord>> fetchBookCatalogue() async {
    final response = await http.get('$base/catalogue').timeout(Duration(seconds: 5));
    if(response.statusCode != 200) {
      return new List(0);
    }

    Iterable l = json.decode(response.body);
    List<BookCatalogueRecord> books = l
        .map((model) => BookCatalogueRecord.fromJson(model)).toList();
    return books;
  }

  Future<OrderHistoryRecord> fetchOrderHistory() async {
    final response = await http.get('$base/username/$username/purchases').timeout(Duration(seconds: 5));
    if (response.statusCode != 200) {
      return null;
    }
    return OrderHistoryRecord.fromJson(json.decode(response.body));
  }
}