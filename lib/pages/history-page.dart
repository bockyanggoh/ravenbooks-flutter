import 'dart:async';

import 'package:bookstore_flutter/library.dart';
import 'package:bookstore_flutter/model/purchase.dart';
import 'package:bookstore_flutter/pages/error-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/service.dart';
import 'app-drawer.dart';

class HistoryPage extends StatefulWidget {
  _HistoryPageState createState() => _HistoryPageState();
}


class _HistoryPageState extends State<HistoryPage> {
  Future<List<OrderHistoryRecord>> history;


  @override
  void initState() {
    this.history = ApiService().fetchOrderHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RavenclawColors.navy,
      body: Center(
        child: FutureBuilder<List<OrderHistoryRecord>>(
          future: this.history,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Container(
                child: Text('Placeholder!'),
              );
            } else if (snapshot.hasError) {
                return renderException(snapshot.error);
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      bottomNavigationBar: AppDrawer(),
    );
  }

  Widget renderPurchases(List<OrderHistoryRecord> records) {
    if (records.length == 0) {
      return noContent();
    } else {
      return hasContent(records);
    }
  }

  Widget hasContent(List<OrderHistoryRecord> records) {
    return Container(
      child: Row(
        children: [
          Text('Image'),
          Text('Description'),
          FlatButton(
            child: Text('View'),
          )
        ],
      ),
    );
  }

  Widget noContent() {
    return Container(
      child: Column(
        children: [
          Image.asset('/assets/image/no-data.png',
          width: 250,
          height: 250,),
          Text('No records found in the magic closet.'),
          OutlineButton(
            color: Colors.cyan,
            child: Text('Text', style: SharedConfig.generalTextStyle,),
          )
        ],
      ),
    );
  }

  Widget renderException(Object error) {
    print(error);
    if (error is TimeoutException) {
      return StatelessErrorPage(errorText: 'Backend took too long to respond. For shame.');
    }

    return StatelessErrorPage();
  }
}