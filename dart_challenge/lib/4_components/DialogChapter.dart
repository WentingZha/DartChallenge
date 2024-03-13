import 'package:flutter/material.dart';
import 'dart:async';

enum Option{
  A,B
}

enum Action{
  Cancel,Sure
}

class DialogChapter extends StatefulWidget {
  final String title;
  const DialogChapter({super.key, required this.title});

  @override
  State<DialogChapter> createState() => DialogChapterState();
}

class DialogChapterState extends State<DialogChapter> {
  String selection = '';
  String alertSelection = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You select: $selection from simple dialog'),
            SizedBox(height: 17.0),
            Text('You select: $alertSelection from alert dialog'),
            SizedBox(height: 17.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: startAlertDialog,
                    child: Text('StartAlertDialog'))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startSimpleDialog,
        child: Icon(Icons.format_list_numbered),
      )
    );
  }


  Future startSimpleDialog() async {
    final result = await showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(title: Text('SimpleDialog'),children: <Widget>[
          SimpleDialogOption(child: Text('Selection 1'), onPressed: (){//The dialog will dismiss when option1 is clicked
              Navigator.pop(context,Option.A);
            },
          ),
          SimpleDialogOption(child: Text('Selection 2'), onPressed: (){
            Navigator.pop(context,Option.B);
          },
        ),
      ]);
    });
    switch(result){
      case Option.A:
        setState(() {
          selection = '1';
        });
      case Option.B:
        setState(() {
          selection = '2';
        });
        break;
    }
  }

  Future startAlertDialog() async{
    final result = await showDialog(
        context: context,
        barrierDismissible:false,//The dialog will not close if user touch the outsider
        builder: (BuildContext context){
      return AlertDialog(
        title: Text('AlertDialog'),
        content: Text('Continue?'),
        actions: <Widget>[
          ElevatedButton(onPressed: (){
            Navigator.pop(context,Action.Cancel);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){
            Navigator.pop(context,Action.Sure);
          }, child: Text('Sure'))
        ],
      );
    });
    switch(result){
      case Action.Cancel:
        setState(() {
          selection = 'Cancel';
        });
      case Action.Sure:
        setState(() {
          selection = 'Sure';
        });
        break;
    }
  }
}

