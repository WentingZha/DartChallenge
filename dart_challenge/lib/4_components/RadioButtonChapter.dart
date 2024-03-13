import 'package:flutter/material.dart';

class RadioChapter extends StatefulWidget {
  final String title;
  const RadioChapter({super.key, required this.title});

  @override
  State<RadioChapter> createState() => RadioChapterState();
}

class RadioChapterState extends State<RadioChapter> {
  int? radioGroup = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue: $radioGroup'),
            SizedBox(height: 21.0),
            RadioListTile(
                value: 0,
                groupValue: radioGroup,
                onChanged: onRadioValueChanged,
                title: Text('Check A'),
                subtitle: Text('Comments'),
                secondary: Icon(Icons.filter_1),
                selected: radioGroup == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: radioGroup,
              onChanged: onRadioValueChanged,
              title: Text('Check B'),
              subtitle: Text('Comments'),
              secondary: Icon(Icons.filter_2),
              selected: radioGroup == 1,
            ),
            RadioListTile(
              value: 2,
              groupValue: radioGroup,
              onChanged: onRadioValueChanged,
              title: Text('Check C'),
              subtitle: Text('Comments'),
              secondary: Icon(Icons.filter_3),
              selected: radioGroup == 2,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                //=========Radio Example=========
                // Radio(
                //   value: 0,
                //   groupValue: radioGroup,
                //   onChanged: onRadioValueChanged,
                //   activeColor: Colors.indigo,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: radioGroup,
                //   onChanged: onRadioValueChanged,
                //   activeColor: Colors.indigo,
                // )
                //=========Radio Example=========

              ],
            )




          ],
        ),
      ),
    );
  }

  void onRadioValueChanged(int? value) {
    setState(() {
      radioGroup = value;
    });
  }

}

