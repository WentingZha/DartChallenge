import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(ZwtApp());


class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenTing Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check the configuration of the app'),
        ),
        body: Center(
          child: Text('Check the development environment'),
        ),
      ),
    );
  }
}