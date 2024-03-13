import 'package:flutter/material.dart';

class ExpansionPanelItem{
  String headerText = "";
  late Widget body;
  bool isExpanded = false;

  ExpansionPanelItem({
    required this.headerText,
    required this.body,
    required this.isExpanded
  });
}

class ExpansionPanelChapter extends StatefulWidget {
  final String title;
  const ExpansionPanelChapter({super.key, required this.title});

  @override
  State<ExpansionPanelChapter> createState() => _State();
}

class _State extends State<ExpansionPanelChapter> {

  final bottomSheetKey = GlobalKey<ScaffoldState>();
  late List<ExpansionPanelItem> _panelItems;

  @override
  void initState() {
    _panelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel 1',
        body: Container(padding:EdgeInsets.all(16.0) ,width: double.infinity, child: Text('Panel 1 description')),
        isExpanded: false
      ),
      ExpansionPanelItem(
          headerText: 'Panel 2',
          body: Container(padding:EdgeInsets.all(16.0) ,width: double.infinity, child: Text('Panel 2 description')),
          isExpanded: false
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomSheetKey,
      appBar: AppBar(
        title: Text('ExpansionPanel'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelCount,bool isExpanded){
                setState(() {
                  _panelItems[panelCount].isExpanded = isExpanded;
                });
              },
              // children: [
              //   ExpansionPanel(headerBuilder: (BuildContext context,bool isExpanded){
              //     return Container(padding: EdgeInsets.all(16.0), child: Text('Panel 1'));
              //   }, body: Container(padding:EdgeInsets.all(16.0) ,width: double.infinity,child: Text('Panel 1 description')),
              //   isExpanded: true
              //   )
              // ],
              children: _panelItems.map((ExpansionPanelItem item){
                return ExpansionPanel(
                headerBuilder: (BuildContext context,bool isExpanded){
                    return Container(padding: EdgeInsets.all(16.0), child: Text(item.headerText));},
                    body: item.body,
                    isExpanded: item.isExpanded);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
