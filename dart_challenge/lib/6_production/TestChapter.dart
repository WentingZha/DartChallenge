import 'package:flutter/material.dart';


class TestChapter extends StatelessWidget {
  const TestChapter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Test'),
        elevation: 0.0,
      ),
      body: WidgetTest(),
    );
  }
}

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => WidgetTestState();
}

class WidgetTestState extends State<WidgetTest> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(label: Text('WenTingZha')),
        ActionChip(
          key: Key('actionChip'),
          label: Text('$count',key: Key('actionChipLabelText'),),
          onPressed:(){
          setState(() {
            count ++ ;
          });
        },)
      ],
    );
  }
}


class Greet{
    static morning(String name){
      return 'Morning $name';
    }

}