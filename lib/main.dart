import 'package:bookstore_flutter/library.dart';
import 'package:bookstore_flutter/pages/history-page.dart';
import 'package:bookstore_flutter/pages/loading-page.dart';

import 'pages/app-drawer.dart';
import 'pages/home-page.dart';
import 'pages/loading-page.dart';
import 'package:flutter/material.dart';

import 'pages/login-page.dart';
import 'pages/search-page.dart';
import 'pages/search-page.dart';
import 'pages/settings-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color baseSwatch = HexColor('#272822');
    return MaterialApp(
      title: 'RavenClaw BookStore',
      initialRoute: '/login',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/catalogue': (context) => SearchPage(),
        '/search': (context) => SearchPage(),
        '/settings': (context) => SettingsPage(),
        '/history': (context) => HistoryPage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}