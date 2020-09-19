import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library.dart';
import '../library.dart';
import '../library.dart';
import '../library.dart';
class ErrorPage extends StatefulWidget {
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Text('Placeholder');
  }

}


class StatelessErrorPage extends StatelessWidget {
  String errorText="";

  StatelessErrorPage({this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Uhhh... Mischief Managed?', textAlign: TextAlign.center, style: SharedConfig.titleStyle,),
          Image.asset('assets/image/error-img.png', height: 300, width: 300,),
          Container(
            padding: const EdgeInsets.only(top: 0.0),
            width: 250,
            child: Text(
              '"The best of us must sometimes eat our words." - Albus Dumbledore',
              textAlign: TextAlign.justify,
              softWrap: true,
              style: SharedConfig.descriptionStyle
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                width: 2,
                color: Colors.black,
              )
            ),
            width: 350,
            child: Text(
              errorText == null ?
                  'Error details not populated by the lazy developer. For shame. For shame.':
                  errorText,
              textAlign: TextAlign.center,
              style: SharedConfig.generalTextStyle
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Go Back', style: TextStyle(color: Colors.blue),),
            ),
          )
        ],
      ),
    );
  }
}