import 'package:flutter/material.dart';

class SizedBoxChapter extends StatelessWidget {
  const SizedBoxChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              alignment: Alignment(1.0,0.0),//The icon will appear on the right of the SizedBox
              decoration: BoxDecoration(
                color: Color.fromARGB(6, 2, 1, 255),
                borderRadius:BorderRadius.circular(3.0)
              ),
              child: Icon(Icons.book_outlined,size: 31.0),
            ),
          ),

          SizedBox(
            height: 100.0,
          ),

          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(6, 2, 1, 255),
                  borderRadius:BorderRadius.circular(3.0)
              ),
              child: Icon(Icons.charging_station_outlined,size: 31.0),
            ),
          ),
        ],
    );
  }
}
