import 'package:flutter/material.dart';

class CheckboxChapter extends StatefulWidget {
  final String title;
  const CheckboxChapter({super.key, required this.title});

  @override
  State<CheckboxChapter> createState() => CheckboxChapterState();
}

class CheckboxChapterState extends State<CheckboxChapter> {
  bool? checkboxFlagA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                value: checkboxFlagA,
                onChanged: (flag){
                  setState(() {
                    checkboxFlagA = flag;
                  });
                },
                title: Text('Check Item A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.bookmark),
                selected: checkboxFlagA!,
            ),
            //=======Checkbox example=========
            // Checkbox(
            //     value: checkboxFlagA,
            //     onChanged: (flag){
            //       setState(() {
            //         checkboxFlagA = flag;
            //       });
            //     },
            //     activeColor: Colors.lightBlue,
            // )
            //=======Checkbox example=========


          ],
        ),
      ),
    );
  }
}
