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
                        child: Text('Form'), onPressed: (){
                      Navigator.pushNamed(context, '/form');
                    }),
                      ElevatedButton(
                          child: Text('Chip'), onPressed: (){
                        Navigator.pushNamed(context, '/chip');
                      }),
                      ElevatedButton(
                          child: Text('table'), onPressed: (){
                        Navigator.pushNamed(context, '/table');
                      }),
                      ElevatedButton(
                          child: Text('stepper'), onPressed: (){
                        Navigator.pushNamed(context, '/stepper');
                      }),
                      ElevatedButton(
                          child: Text('state'), onPressed: (){
                        Navigator.pushNamed(context, '/state');
                      }),
                      ElevatedButton(
                          child: Text('stateModel'), onPressed: (){
                        Navigator.pushNamed(context, '/stateModel');
                      }),
                      ElevatedButton(
                          child: Text('stream'), onPressed: (){
                        Navigator.pushNamed(context, '/stream');
                      }),
                      ElevatedButton(
                          child: Text('broadcastStream'), onPressed: (){
                        Navigator.pushNamed(context, '/broadcastStream');
                      }),
                      ElevatedButton(
                          child: Text('bloc'), onPressed: (){
                        Navigator.pushNamed(context, '/bloc');
                      }),
                      ElevatedButton(
                          child: Text('http'), onPressed: (){
                        Navigator.pushNamed(context, '/http');
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
