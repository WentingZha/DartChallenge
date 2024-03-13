import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  const ZwtApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Example',
      home: Scaffold(
        appBar: AppBar(title: Text('Row and Column')),

        //Horizontal
        // body: Row(
        //     children: <Widget>[
        //       Expanded(child: ElevatedButton(
        //         onPressed: (){},
        //         // child: DrawerButton()
        //         child: const Text('Button Orange'),
        //       )),
        //       ElevatedButton(
        //           onPressed: (){},
        //           // child: DrawerButton()
        //           child: const Text('Button Gray'),
        //       )
        //
        //   ],
        // ),

        //Vertical
        body: Center(child: ZwtColumn()),

      ),
    );
  }
}

class  ZwtColumn extends StatelessWidget{
  const ZwtColumn({super.key});

  @override
  Widget build(BuildContext context){
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('ABC'),
          Text('123'),
          Expanded(child: Text('ABCD')),
          Text('1234')
        ],
      );
  }

}