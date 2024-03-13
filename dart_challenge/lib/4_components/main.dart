import 'package:dart_challenge/4_components/BottomSheetChapter.dart';
import 'package:dart_challenge/4_components/CalendarChapter.dart';
import 'package:dart_challenge/4_components/CheckboxChapter.dart';
import 'package:dart_challenge/4_components/DialogChapter.dart';
import 'package:dart_challenge/4_components/ExpansionPanelChapter.dart';
import 'package:dart_challenge/4_components/NavigatorChapter.dart';
import 'package:dart_challenge/4_components/PopupMenuChapter.dart';
import 'package:dart_challenge/4_components/RadioButtonChapter.dart';
import 'package:dart_challenge/4_components/SwitchChapter.dart';
import 'package:flutter/material.dart';
import 'package:dart_challenge/4_components/SliderChapter.dart';
import 'package:dart_challenge/5_data/ChipChapter.dart';


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
        '/floatingbutton':(context) => Chapter(title: 'floatingbutton'),
        '/popup':(context) => PopupMenuChapter(title: 'PopupMenu'),
        '/checkbox':(context) => CheckboxChapter(title: 'Checkbox'),
        '/radio':(context) => RadioChapter(title: 'Radio'),
        '/switch':(context) => SwitchChapter(title: 'Switch'),
        '/slider':(context) => SliderChapter(title: 'Slider'),
        '/calendar':(context) => CalendarChapter(title: 'Calendar'),
        '/dialog':(context) => DialogChapter(title: 'Dialog'),
        '/bottomsheet':(context) => BottomSheetChapter(title: 'Bottomsheet'),
        '/expansionPanel':(context) => ExpansionPanelChapter(title: 'expansionPanel'),

      },
    );
  }
}