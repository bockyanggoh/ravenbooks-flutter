import 'package:bookstore_flutter/model/model.dart';
import 'package:bookstore_flutter/service/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Future<List<BookCatalogueRecord>> books;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<BookCatalogueRecord>>(
          future: this.books,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              List<BookWidget> widgets = snapshot.data.map((data) => BookWidget(data.imgLink, data.bookName, data.stock > 0)).toList();
              if (snapshot.data.length > 0) {
                return ListView(
                  children: widgets,
                );
              } else {
                return Text('No Data found!');
              }
            } else if (snapshot.hasError) {
              return Text('Woopsies, ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          }
        )
      ),
    );
  }

  @override
  void initState() {
    this.books = ApiService().fetchBookCatalogue();
  }
}

class BookWidget extends StatelessWidget {
  final String imageUrl;
  final String bookName;
  final bool inStock;


  BookWidget(this.imageUrl, this.bookName, this.inStock);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.network(
              this.imageUrl,
            height: 75,
            width: 75,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(bookName, textAlign: TextAlign.left, ),
              Text('$inStock')
            ],
          )
        ],
      ),
    );
  }
}