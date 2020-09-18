import 'package:bookstore_flutter/model/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  String mockBase = "";
  String base = "http://10.0.2.2:8080";

  Future<List<BookCatalogueRecord>> fetchBookCatalogue() async {
    final response = await http.get('$base/catalogue');
    if(response.statusCode != 200) {
      return new List(0);
    }

    Iterable l = json.decode(response.body);
    List<BookCatalogueRecord> books = l
        .map((model) => BookCatalogueRecord.fromJson(model)).toList();
    return books;
  }
  //
  // Future<http.Response> fetchBook(String id) {
  //   return http.get('$base/catalogue/$id');
  // }
}