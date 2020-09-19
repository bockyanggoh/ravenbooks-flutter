
import 'package:bookstore_flutter/pages/home-page.dart';
import 'package:bookstore_flutter/pages/search-page.dart';
import 'package:bookstore_flutter/pages/settings-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch(index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/search');
        break;
      case 2:
        Navigator.pushNamed(context, '/history');
        break;
      case 3:
        Navigator.pushNamed(context, '/settings');
        break;
      default:
        //Do Nothing
        break;

    }
  }

  Widget pageToLoad() {
    if(_selectedIndex == 0) {
      return HomePage();
    } else if (_selectedIndex == 1) {
      return SearchPage();
    } else {
      return SettingsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings')
        ),
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.cyan,
    );
  }

}