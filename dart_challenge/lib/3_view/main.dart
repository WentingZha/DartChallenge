import 'package:dart_challenge/3_view/ListViewChapter.dart';
import 'package:dart_challenge/3_view/ViewChapter.dart';
import 'package:flutter/material.dart';
import 'package:dart_challenge/3_view/IconBadgeChapter.dart';
import 'package:dart_challenge/3_view/SizedBoxChapter.dart';
import 'package:dart_challenge/3_view/AnimationChapter.dart';


void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZhaWenting Example',
      home: Channels(),
    );
  }
}

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.candlestick_chart_outlined)),
                Tab(icon: Icon(Icons.charging_station)),
                Tab(icon: Icon(Icons.cake)),
                Tab(icon: Icon(Icons.cabin)),
                Tab(icon: Icon(Icons.cable))
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              IconBadgeChapter(),
              SizedBoxChapter(),
              ViewChapter(),
              ListViewChapter(),
              AnimationChapter()
            ],
          ),
        )
    );
  }
}
