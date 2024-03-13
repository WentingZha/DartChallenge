import 'package:dart_challenge/6_production/TestChapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

//Run flutter test in the terminal
void main(){
  // test('return Morning +name.', () {
  //    var str = Greet.morning('Eternity');
  //    expect(str, 'Morning Eternity!');
  //    expect(str, 'Morning Eternity');
  // });

  testWidgets('Widget test', (widgetTester) async{
    await widgetTester.pumpWidget(
      // TestChapter()//Test failed
      MaterialApp(home:TestChapter())
    );

    //======Test display======
    // final labelTest = find.text('WenTingZha');
    // expect(labelTest, findsNothing);
    // expect(labelTest, findsOneWidget);
    // expect(labelTest, findsWidgets);
    //======Test display======

    //========Test the click event=======
    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget);

    final actionChip = find.byType(ActionChip);
    await widgetTester.tap(actionChip);
    await widgetTester.pump();//Rebuild the widget

    final actionChipLableTextClicked = find.text('1');
    expect(actionChipLableTextClicked, findsOneWidget);
    expect(actionChipLabelText, findsNothing);
    //========Test the click event=======
  });

}