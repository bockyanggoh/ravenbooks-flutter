import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app-drawer.dart';

class HistoryPage extends StatefulWidget {
  _HistoryPageState createState() => _HistoryPageState();
}


class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1')
          ],
        ),
      ),
      bottomNavigationBar: AppDrawer(),
    );
  }

  renderPurchases() {

  }
}