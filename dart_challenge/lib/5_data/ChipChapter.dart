import 'package:flutter/material.dart';

class ChipChapter extends StatefulWidget {
  final String title;
  const ChipChapter({super.key, required this.title});

  @override
  State<ChipChapter> createState() => _State();
}

class _State extends State<ChipChapter> {
  List<String> tags1 = [
    'Chatper1',
    'Chatper2'
  ];
  List<String> tags2 = [
    'Chatper1',
    'Chatper2'
  ];
  List<String> tags3 = [
    'Chatper1',
    'Chatper2'
  ];
  List<String> tags4 = [
    'Chatper1',
    'Chatper2'
  ];

  String action = '';
  List<String> selected = [];
  String choice = 'Chapter1';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('Chip'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 7.0,
              runSpacing: 7.0,
              children: <Widget>[
                Chip(
                  label: Text('ZWT'),
                ),
                SizedBox(width: 8.0),
                Chip(
                  label: Text('HWH'),
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 8.0),
                Chip(
                  label: Text('GLZ'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Text('L'),
                  ),
                ),
                Chip(
                  label: Text('ZWM'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text('M'),
                  ),
                ),
                Chip(
                  label: Text('Example'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.cyan,
                  deleteButtonTooltipMessage: 'Remove the tag',//Long click to display the tip
                ),
                Divider(
                  color: Colors.blue,
                  height: 21.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: tags1.map((tag1){
                    return Chip(
                      label: Text(tag1),
                      onDeleted: (){
                        setState(() {
                          tags1.remove(tag1);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.blue,
                  height: 21.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $action = '''),
                ),
                Wrap(
                  spacing: 8.0,
                  children: tags2.map((tag2){
                    return ActionChip(
                      label: Text(tag2),
                      onPressed: (){
                        setState(() {
                          action = tag2;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.blue,
                  height: 21.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: tags3.map((tag3){
                    return FilterChip(
                      label: Text(tag3),
                      selected: selected.contains(tag3),
                      onSelected: (status){
                        setState(() {
                          if(selected.contains(tag3)){
                            selected.remove(tag3);
                          }else{
                            selected.add(tag3);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.blue,
                  height: 21.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: tags4.map((tag4){
                    return ChoiceChip(
                      label: Text(tag4),
                      selectedColor: Colors.amberAccent,
                      selected: choice == tag4,
                      onSelected: (status){
                        setState(() {
                          choice = tag4;
                        });
                      },
                    );
                  }).toList(),
                )//Display a chip list//Di//Display a chip list//Disp//Display a chip list//Display a chip list dynamically
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tags1 = [
              'Chapter1',
              'Chapter2'
            ];
            tags2 = [
              'Chapter1',
              'Chapter2'
            ];
            tags3 = [
              'Chapter1',
              'Chapter2'
            ];
            tags4 = [
              'Chapter1',
              'Chapter2'
            ];
            selected = [];
            choice = 'Chapter1';
          });
        },
        child: Icon(Icons.restore)
      ),
    );
  }
}




