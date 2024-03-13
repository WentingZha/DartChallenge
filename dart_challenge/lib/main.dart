import 'package:dart_challenge/6_production/LocaleChapter.dart';
import 'package:dart_challenge/6_production/map/ZwtLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:dart_challenge/6_production/NavigatorChapter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dart_challenge/4_components/CalendarChapter.dart';
import 'package:dart_challenge/6_production/intl/ZwtLocalizationsIntl.dart';

import '6_production/TestChapter.dart';

void main() => runApp(ZwtApp());


class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,//Localize aaterial components
        GlobalWidgetsLocalizations.delegate,//Localize the text direction
        // ZwtLocalizationsDelegate()
        ZwtLocalizationsIntlDelegate()
      ],
      supportedLocales: [
        Locale('en','US'),
        Locale('zh','CN'),
      ],
      localeResolutionCallback: (locale, supportedLocales){
        return Locale('zh','CN');//Set the locale environment to Chinese
      },
      title: 'WentingZha Example',
      home: NavigatorChapter(),
      initialRoute: '/',
      routes: {
        '/localization':(context) => LocaleChapter(title: 'Localization'),
        //Test the English and Chinese localization
        //Set the language in the system
        '/calendar':(context) => CalendarChapter(title: 'Calendar'),
        '/test':(context) => TestChapter()
      },
    );
  }
}