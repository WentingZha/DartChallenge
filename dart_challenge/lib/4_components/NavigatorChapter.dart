import 'package:flutter/material.dart';


class NavigatorChapter extends StatelessWidget {
  const NavigatorChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
                data: Theme.of(context).copyWith(buttonTheme: ButtonThemeData(
                    padding: EdgeInsets.symmetric(horizontal: 16.0)
                )),
                child:  ButtonBar(
                  children: <Widget>[
                      OutlinedButton.icon(
                        icon: Icon(Icons.charging_station_sharp),
                        onPressed: null,
                        label: Text('Channel'),
                      ),
                      OutlinedButton(
                        child: Text('Floating Button'),
                        onPressed: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (context) {
                          //     return Chapter(title: 'Chapter 1');
                          //   }),
                          // );
                          Navigator.pushNamed(context, '/floatingbutton');
                        },
                      ),
                      OutlinedButton(
                        child: Text('PopupMenu'), onPressed: (){
                        Navigator.pushNamed(context, '/popup');
                      }),
                      OutlinedButton(
                          child: Text('Checkbox'), onPressed: (){
                          Navigator.pushNamed(context, '/checkbox');
                      }),
                      OutlinedButton(
                          child: Text('Radio'), onPressed: (){
                        Navigator.pushNamed(context, '/radio');
                      }),
                      OutlinedButton(
                        child: Text('Switch'), onPressed: (){
                        Navigator.pushNamed(context, '/switch');
                      }),
                      OutlinedButton(
                          child: Text('Slider'), onPressed: (){
                          Navigator.pushNamed(context, '/slider');
                      }),
                      OutlinedButton(
                        child: Text('Calendar'), onPressed: (){
                        Navigator.pushNamed(context, '/calendar');
                      }),
                      OutlinedButton(
                          child: Text('Dialog'), onPressed: (){
                        Navigator.pushNamed(context, '/dialog');
                      }),
                      OutlinedButton(
                          child: Text('Bottomsheet'), onPressed: (){
                        Navigator.pushNamed(context, '/bottomsheet');
                      }),
                      OutlinedButton(
                          child: Text('ExpansionPanel'), onPressed: (){
                        Navigator.pushNamed(context, '/expansionPanel');
                      }),
                      OutlinedButton(
                          child: Text('Chip'), onPressed: (){
                        Navigator.pushNamed(context, '/chip');
                      }),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

class Chapter extends StatelessWidget {
  const Chapter({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
