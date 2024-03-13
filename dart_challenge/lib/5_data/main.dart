import 'package:dart_challenge/5_data/BroadcastStreamChapter.dart';
import 'package:dart_challenge/5_data/FormChapter.dart';
import 'package:dart_challenge/5_data/BlocChapter.dart';
import 'package:dart_challenge/5_data/StepperChapter.dart';
import 'package:dart_challenge/5_data/TableChapter.dart';
import 'package:dart_challenge/5_data/HttpChapter.dart';
import 'package:flutter/material.dart';
import 'package:dart_challenge/5_data/ChipChapter.dart';
import 'package:dart_challenge/5_data/NavigatorChapter.dart';
import 'package:dart_challenge/5_data/StateChapter.dart';
import 'package:dart_challenge/5_data/StateModelChapter.dart';
import 'package:dart_challenge/5_data/StreamChapter.dart';


void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'ZhaWenting Example',
      home: NavigatorChapter(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          highlightColor: Color.fromRGBO(255, 255, 255, 255),
          splashColor: Colors.white70
      ),
      initialRoute: '/',
      routes: {
        '/form':(context) => FormChapter(title: 'form'),
        '/chip':(context) => ChipChapter(title: 'chip'),
        '/table':(context) => TableChapter(title: 'table'),
        '/stepper':(context) => StepperChapter(title: 'stepper'),
        '/state':(context) => StateChapter(title: 'state'),
        '/stateModel':(context) => StateModelChapter(title: 'StateModel'),
        '/stream':(context) => StreamChapter(title: 'Stream'),
        '/broadcastStream':(context) => BroadcastStreamChapter(title: 'broadcastStream'),
        '/bloc':(context) => BlocChapter(title: 'bloc'),
        '/http':(context) => HttpChapter(title: 'http'),
      },
    );
  }
}