import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Example',
      home: Scaffold(
        body: Center(
          child: Container(
            child:Text('Peace',style: TextStyle(fontSize: 40.0)),
            // alignment: Alignment.center,
            // alignment: Alignment.bottomLeft,
            // alignment: Alignment.centerLeft
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.lightBlue,
            // padding: const EdgeInsets.all(100.0),
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0),
            margin: const EdgeInsets.all(10.0),
            
            //Cannot provide both a color and a decoration
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
              ),
              border: Border.all(width: 2.0,color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}


class CustomedContainer extends StatelessWidget {
  CustomedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent[100],
      width: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Icon(Icons.dashboard,size: 31.0,color:Colors.white),
              // color: Color.fromARGB(3,54, 255, 100),
              // padding: EdgeInsets.only(left: 21.0,right: 8.0),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                  color: Color.fromARGB(3,54, 255, 255),
                  // border: Border(
                  //   top: BorderSide(
                  //     color: Color.fromARGB(255, 255, 255, 255),
                  //     width: 3.0,
                  //     style: BorderStyle.solid
                  //   ),
                  // )
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 3.0,
                      style: BorderStyle.solid
                  ),
                  // borderRadius: BorderRadius.circular(16.0)
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0)
                  )
              )
          )
        ],
      ),
    );
  }
}