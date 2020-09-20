import 'package:bookstore_flutter/library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app-drawer.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            headerSection(),
            placeOrderTile(),
            checkOrderTile(),
            viewOrderHistory()
          ],
        ),
      ),
      bottomNavigationBar: AppDrawer(),
    );
  }

  Widget headerSection() {
    return Container(
      child: Text('Home', style: SharedConfig.titleStyle,),
    );
  }


  Widget placeOrderTile() {
    return Container(
      width: 250,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 3,
          color: RavenclawColors.brown
        )
      ),
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Logo"),
            Text("Place Order")
          ],
        ),
      ),
    );
  }

  Widget checkOrderTile() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
        child: Container(
          width: 250,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 3,
                  color: RavenclawColors.brown
              )
          ),
          child: GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Logo"),
                Text("Place Order")
              ],
            ),
          ),
        )
    );
  }

  Widget viewOrderHistory() {
    return Container(
      width: 250,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 3,
              color: RavenclawColors.brown
          )
      ),
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Logo"),
            Text("Place Order")
          ],
        ),
      ),
    );
  }
}