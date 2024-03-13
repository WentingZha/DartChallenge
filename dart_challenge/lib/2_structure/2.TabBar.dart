import 'package:flutter/material.dart';

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
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('Navigation button is pressed'),
            ),
            title: Text('TabBar'),
            actions: <Widget>[],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.chat)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Icon(Icons.chat,size: 128.0,color: Colors.black12),
              Icon(Icons.change_history,size: 128.0,color: Colors.black12),
              Icon(Icons.directions_bike,size: 128.0,color: Colors.black12),
            ],
          ),
        )
    );
  }
}
