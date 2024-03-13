import 'package:flutter/material.dart';

class SliderChapter extends StatefulWidget {
  final String title;
  const SliderChapter({super.key, required this.title});

  @override
  State<SliderChapter> createState() => _State();
}

class _State extends State<SliderChapter> {
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Slider(
                  value: progress,
                  onChanged: (value){
                    setState(() {
                      progress = value;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                  inactiveColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  min: 0.0,
                  max: 2.0,
                  divisions: 20,
                  label: '${progress.toInt()}',
                )
              ],
            ),
            Text('Slider progress: $progress')
          ],
        ),
      ),
    );
  }

}

