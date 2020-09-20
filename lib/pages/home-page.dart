import 'package:bookstore_flutter/library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      child: InkWell(
        onTap: () {
          showDialog(context: context,
          child: CreateOrder()
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              '/assets/icon/box.svg'
            ),
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

class CreateOrder extends StatefulWidget {
  _CreateOrderState createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrder> {
  int currentStep = 0;
  bool completed = false;

  List<Step> steps = [
    Step(
      title: const Text('User Details'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Username'),
          )
        ],
      )
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place order')
      ),
      body: Column(
      children: [
        Expanded(
          child: Stepper (
            steps: steps,
          )
        )
      ],),
    );
  }

}