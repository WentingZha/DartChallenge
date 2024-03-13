import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Listview Example',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView'),),

        //Vertical ListView
        // body: new ListView(
        //   children: <Widget>[
        //     ListTile(
        //         leading: Icon(Icons.zoom_in),
        //         title: Text('Zoom in')
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.web_rounded),
        //       title: Text('Web'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.timelapse),
        //       title: Text('Timelapse'),
        //     )
        //   ],
        // ),

        //Horizontal ListView
        body: const Center(
          child: SizedBox(
            height: 200.0,
            child: ZwtList()
          ),
        ),
      ),
    );
  }
}

class ZwtList extends StatelessWidget{
  const ZwtList({super.key});

  @override
  Widget build(BuildContext context){
      return ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.lightBlue,
          ),
          Container(
            width: 180.0,
            color: Colors.amber,
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            color: Colors.purple,
          ),
        ],
      );
  }

}