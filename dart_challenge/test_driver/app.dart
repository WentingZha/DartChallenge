//Integration test
import 'package:flutter_driver/driver_extension.dart';
import 'package:dart_challenge/main.dart' as app;

void main(){
  enableFlutterDriverExtension();

  //Command: flutter driver  --driver=test_driver/app_test.dart --target=test_driver/app.dart
  // flutter test app_test
  //Create a debugging app
  app.main();
}
