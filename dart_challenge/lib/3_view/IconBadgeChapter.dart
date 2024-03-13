import 'package:flutter/material.dart';

class IconBadgeChapter extends StatelessWidget {
  const IconBadgeChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          AspectRatio(
            aspectRatio: 2.0/1.0,
            child: Container(
              color: Color.fromRGBO(1, 2, 125, 123),
            ),
        ),
        IconBadge( icon: Icons.games),
        IconBadge( icon: Icons.book_outlined,size: 64),
        IconBadge( icon: Icons.music_note),
        IconBadge( icon: Icons.charging_station_outlined)
      ]
    );
  }
}

class IconBadge extends StatelessWidget {
  IconBadge({super.key, required this.icon, this.size = 31.0});

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: size,color: Colors.white),
      width: size+50,
      height: size+50,
      color: Color.fromARGB(125, 1, 2, 3),
    );
  }
}

