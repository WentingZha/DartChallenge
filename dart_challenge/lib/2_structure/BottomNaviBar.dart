import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  BottomNaviBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNaviBarState();
  }
}

class _BottomNaviBarState extends State<BottomNaviBar>{

  int selectedIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,//Active item
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,//If the number of items are more than 3, the BarType should be fixed
      fixedColor: Colors.red,//If the number of items are more than 3, the color should be fixed
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.charging_station),
            label:'Charging'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label:'chat'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.chair),
            label:'chair'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label:'book'
        ),
      ],
    );
  }




}
