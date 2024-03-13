import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZhaWenting Example',
      home: Channels(),
      theme: ThemeData()
    );
  }
}

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () => debugPrint('Navigation button is pressed'),
        ),
        title: Text("AppBar IconButton"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Search button is pressed'),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('More button is pressed'),
          ),
        ],
        elevation: 0.0,
      ),
    );
  }
}
