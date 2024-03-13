import 'package:flutter/material.dart';

void main() => runApp(const ZwtApp());

class ZwtApp extends StatelessWidget{
  const ZwtApp({super.key});

  @override
  Widget build(BuildContext context){
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.8),//The offset of children widgets range is 0-1
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('http://books.google.com/books/content?id=CAUVEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
          radius: 100.0,
        ),
        //Container: Two widgets in the stack
        // Container(
        //   decoration: const BoxDecoration(
        //     color: Colors.lightBlue,
        //   ),
        //   padding: const EdgeInsets.all(1.0),
        //   child: Text('books'),
        // )

        //Positioned: More than two widgets
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Text('Google.com'),
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Text('ZhaWenting'),
        )
      ],

    );
    return MaterialApp(
      title: 'ZhaWenting Example',
      home: Scaffold(
          appBar: AppBar(title: Text('Stack')),
          body: stack

      ),
    );
  }
}