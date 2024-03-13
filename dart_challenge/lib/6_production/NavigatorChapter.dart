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
                    ElevatedButton(
                        child: Text('Localization'), onPressed: (){
                        Navigator.pushNamed(context, '/localization');
                    }),
                    ElevatedButton(
                        child: Text('calendar'), onPressed: (){
                        Navigator.pushNamed(context, '/calendar');
                    }),
                    ElevatedButton(
                        child: Text('Test'), onPressed: (){
                        Navigator.pushNamed(context, '/test');
                    })
                  ]
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
      appBar: AppBar(title: Text(title)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
