import 'package:flutter/material.dart';

class BottomSheetStlChapter extends StatelessWidget {
  const BottomSheetStlChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Hang on...'),
            ElevatedButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


class BottomSheetChapter extends StatefulWidget {
  final String title;
  const BottomSheetChapter({super.key, required this.title});

  @override
  State<BottomSheetChapter> createState() => BottomSheetChapterState();
}

class BottomSheetChapterState extends State<BottomSheetChapter> {

  final bottomSheetKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: bottomSheetKey,
        appBar: AppBar(
          title: Text('BottomSheet'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: displayBottomSheet,
                  child: Text('BottomSheet')
              ),
              ElevatedButton(
                  onPressed: openModalBottomSheet,
                  child: Text('Modal BottomSheet')
              ),
            ],
          ),
        ),
    );
  }

  void displayBottomSheet() {
    bottomSheetKey.currentState?.showBottomSheet((BuildContext context) {
      return BottomAppBar(child: Container(height: 60.0,width: double.infinity,padding: EdgeInsets.all(16.0),
        child: Row(
         children: <Widget>[
           Icon(Icons.charging_station),
           SizedBox(width: 11.0),
           Text('1%'),
           Expanded(child: Text('Hang on',textAlign: TextAlign.right,))
         ], 
        )));
    });  
  }

  //Error: A RenderFlex overflowed by 12 pixels on the bottom.
  //User SingleChildScrollView()
  //isScrollControlled: true
  Future openModalBottomSheet() async{
    final selection = await showModalBottomSheet(context: context,isScrollControlled: true, builder: (BuildContext context){
      return Container(
       height: 100.0,
       child: SingleChildScrollView(child:Column(children: <Widget>[
         ListTile(title: Text("Selection 1"),onTap: (){Navigator.pop(context,'1');}),
         ListTile(title: Text("Selection 2"),onTap: (){Navigator.pop(context,'2');})
       ]))
      );
    });
    print('Modal Bottmsheet $selection');
  }
}

