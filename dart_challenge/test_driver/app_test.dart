import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart' as flutterTest;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  flutterTest.group('App', () {
    FlutterDriver? driver;

    flutterTest.setUpAll(() async{
      driver = await FlutterDriver.connect();
    });

    flutterTest.tearDownAll(() async{
      driver?.close();
    });

    flutterTest.test('start at 0', () async{
      flutterTest.expect(await
        driver?.getText(find.byValueKey('actionChipLabelText')),'0');
    });

    flutterTest.test('Counter', () async{
      flutterTest.expect(await
      driver?.getText(find.byValueKey('actionChipLabelText')),'0');
    });
  });
}
