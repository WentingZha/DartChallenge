import 'package:flutter/material.dart';
//Insert intl [version number] under 'dependencies' in punspec.yaml
//Click button 'Pub get' to run a command: flutter pub get
import 'package:intl/intl.dart';

class CalendarChapter extends StatefulWidget {
  final String title;
  const CalendarChapter({super.key, required this.title});

  @override
  State<CalendarChapter> createState() => _State();
}

class _State extends State<CalendarChapter> {
  double progress = 0.0;
  DateTime? dateChosen = DateTime.now();
  TimeOfDay? timeChosen = TimeOfDay(hour: 1, minute:1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calendar'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Column(
                    children: <Widget>[
                      // Text(DateFormat.yMd().format(dateChosen)),
                      Text(DateFormat.yMMMd().format(dateChosen!)),
                      Icon(Icons.arrow_circle_down)
                    ],
                  ),
                  onLongPress: chooseDate,
                ),
                InkWell(
                  child: Column(
                    children: <Widget>[
                      Text(timeChosen!.format(context)),
                      Icon(Icons.arrow_circle_down)
                    ],
                  ),
                  onLongPress: chooseTime,
                )

              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> chooseDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: dateChosen,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)
    );
    if (date == null) return;

    setState(() {
      dateChosen = date;
    });
  }

  chooseTime() async {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: timeChosen!,

    );
    if (time == null) return;

    setState(() {
      timeChosen = time;
    });
  }
}




