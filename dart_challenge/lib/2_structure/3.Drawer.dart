import 'package:flutter/material.dart';
import 'Locker.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZhaWenting Example',
      home: Channels(),
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        highlightColor: Color.fromARGB(10, 255, 255, 255),
        splashColor: Colors.white70
      )
    );
  }
}

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.track_changes,size: 128.0,color: Colors.black38),
            ],
          ),

          // drawer: Text('Locker'),//Locker on the left

          // endDrawer: Text('Locker'),//Locker on the right

          // drawer: Container(
          //   color: Colors.white,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Text('Drawer')
          //     ],
          //   ),
          // ),

          //Locker with a listview and an account header
          drawer: Locker()
        )
    );
  }
}



