import 'package:flutter/material.dart';

class PopupMenuChapter extends StatefulWidget {

  final String title;
  const PopupMenuChapter({super.key, required this.title});

  @override
  State<PopupMenuChapter> createState() => PopupMenuChapterState();
}

class PopupMenuChapterState extends State<PopupMenuChapter>{
  String currentItem = 'Chapter1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenu'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentItem),
                PopupMenuButton(
                    onSelected: (value){
                      debugPrint('OnPopupMenuSelected: $value');
                      setState(() {
                        currentItem = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        value: 'Chapter1',
                        child: Text('Chapter1'),
                      ),
                      PopupMenuItem(
                        value: 'Chapter2',
                        child: Text('Chapter2'),
                      ),
                      PopupMenuItem(
                        value: 'Chapter3',
                        child: Text('Chapter3'),
                      ),
                    ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
