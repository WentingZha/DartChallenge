import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Text Example',
      home: Scaffold(
        body: Center(
            child:
            // StylishText()
          const Text(
            'Hang on, it takes time to get everything ready, be patient to get the best reward',
            textAlign: TextAlign.right,
            // maxLines: 1,
            // overflow: TextOverflow.clip,
            // overflow: TextOverflow.ellipsis,//Three dots in the end to display long sentence
            overflow: TextOverflow.fade,
            style: TextStyle(
                fontSize: 25.0,
                color: Color.fromARGB(255, 255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid//Underline
            ),
          )
        ),
      ),
    );
  }
}

class StylishText extends StatelessWidget {
  StylishText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'Hang on',
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 21.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100
            ),
            children: [
              TextSpan(
                  text: '.com',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.pink
                  )
              )
            ]
        )
    );
  }
}
