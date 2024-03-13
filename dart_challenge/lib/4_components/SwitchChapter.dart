import 'package:flutter/material.dart';

class SwitchChapter extends StatefulWidget {
  final String title;
  const SwitchChapter({super.key, required this.title});

  @override
  State<SwitchChapter> createState() => SwitchChapterState();
}

class SwitchChapterState extends State<SwitchChapter> {
  bool switchFlagZ = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
                value: switchFlagZ,
                onChanged: (flag){
                  setState(() {
                    switchFlagZ = flag;
                  });
                },
              title: Text('Switch Z'),
              subtitle: Text('ZhaWenTing'),
              // secondary: Icon(switchFlagZ? Icons.visibility:Icons.visibility_off),
              secondary: Icon(Icons.charging_station),
              selected: switchFlagZ,
            )

            //=========Switch Example==========
            // Text(switchFlagZ ? ':)':':(',style: TextStyle(fontSize: 41)),
            // Switch(
            //     value: switchFlagZ,
            //     // onChanged: null//The switch is forbidden
            //   onChanged: (flag){
            //       setState(() {
            //         switchFlagZ = flag;
            //       });
            //   },
            // ),
            //=========Switch Example==========

          ],
        ),
      ),
    );
  }

}

