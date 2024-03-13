import 'package:flutter/material.dart';
import 'BottomNaviBar.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZhaWenting Example',
      home: Channels(),
      theme: ThemeData(
          primarySwatch: Colors.pink,
          highlightColor: Color.fromARGB(10, 255, 255, 255),
          splashColor: Colors.white
      )
    );
  }
}

class Channels extends StatelessWidget {
  Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_shipping,size: 128.0,color: Colors.black38),
              Icon(Icons.flight,size: 128.0,color: Colors.black38),
              Icon(Icons.directions_boat,size: 128.0,color: Colors.black38),
              Icon(Icons.rocket,size: 128.0,color: Colors.black38),
            ],
          ),
          bottomNavigationBar: BottomNaviBar()
        )
    );
  }
}



