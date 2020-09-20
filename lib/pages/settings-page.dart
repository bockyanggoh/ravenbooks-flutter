import 'package:bookstore_flutter/library.dart';
import 'package:bookstore_flutter/pages/app-drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  _SettingsPageState createState() => _SettingsPageState();
}

 class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('No Settings Available yet!', style: SharedConfig.generalTextStyle,)
          ],
        ),
      ),
      bottomNavigationBar: AppDrawer(),
    );
  }
 }