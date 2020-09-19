import 'dart:async';

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
  Future<OrderHistoryRecord> history;


  @override
  void initState() {
    this.history = ApiService().fetchOrderHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<OrderHistoryRecord>(
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
  renderPurchases() {
  }

  renderException(Object error) {
    print(error);
    if (error is TimeoutException) {
      return StatelessErrorPage(errorText: 'Backend took too long to respond. For shame.');
    }

    return StatelessErrorPage();
  }
}