import 'package:flutter/material.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  const ZwtApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Image Example',
      home: Scaffold(
          body: Center(
            child:Container(
                width: 300.0,
                height: 100.0,
                color: Colors.lightBlue,
                child: Image.network(
                  'http://books.google.com/books/content?id=CAUVEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                  fit: BoxFit.contain,//Keep the proportion of the image, fit the height or width of the container,
                  // fit: BoxFit.fill,//Fill the container
                  // fit: BoxFit.fitHeight,//Keep the proportion of the image, fit the height of the container,
                  // fit: BoxFit.cover
                  color: Colors.lightBlue,
                  colorBlendMode: BlendMode.darken,
                  repeat: ImageRepeat.repeat,
                )
            ),
          )
      ),
    );
  }
}

//Assets configuration file is pubspec.yaml
//Create a folder 'Images' under the root
class LocalAssets extends StatelessWidget {
  const LocalAssets({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/zhaweiming.JPG');
  }
}