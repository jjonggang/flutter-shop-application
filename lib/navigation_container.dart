import 'package:accessory_jk_flutter/pages/home_page.dart';
import 'package:accessory_jk_flutter/pages/search_page.dart';
import 'package:accessory_jk_flutter/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  List<Widget> _appPages = [
    HomePage(),
    SearchPage(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  void _onIcontapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIcontapped,
      ),
    );
  }
}
