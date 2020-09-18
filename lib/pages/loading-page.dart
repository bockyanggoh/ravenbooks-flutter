
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'app-drawer.dart';

class LandingPage extends StatefulWidget {
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AppDrawer())
      );
    });
    final TextStyle display = Theme.of(context).textTheme.headline4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Ravenclaw BookStore', style: GoogleFonts.oswald(
                    color: Colors.black,
                    textStyle: display),),
                Text('Ravens only', style: GoogleFonts.oswald(
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.bodyText1
                ),),
              ],
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: Image.asset(
                "assets/video/intro-vi.gif",
                height: 300.0,
                width: 300.0,
                fit: BoxFit.fill,
              ),
            )
          ],
        )
      ),
    );
  }

}