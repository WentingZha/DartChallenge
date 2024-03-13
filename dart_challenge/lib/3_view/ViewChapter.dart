import 'package:flutter/material.dart';
import '../model/Book.dart';

class ViewChapter extends StatelessWidget {
  const ViewChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewBuilderChapter();
  }
}

class PageViewBuilderChapter extends StatelessWidget {

  PageViewBuilderChapter({super.key});

  Widget pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            books[index].imageUrl,
            fit: BoxFit.cover
          ),
        ),
        Positioned(
            bottom: 7.0,
            left: 7.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(books[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
                Text(books[index].author,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21))
              ],
            )
        ),
        Positioned(
            bottom: 7.0,
            left: 7.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(books[index].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),
                Text(books[index].author,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21))
              ],
            )
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: books.length,
        itemBuilder: pageItemBuilder,
    );
  }
}

class PageViewChapter extends StatelessWidget {
  PageViewChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: false,
      reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (selectedFragment) => debugPrint('selectedFragment: $selectedFragment'),
      controller: PageController(
          initialPage: 1,
          keepPage: true,//Record the fragment that user is reading
          viewportFraction: 0.5//The fragment
      ),
      children: <Widget>[
        Container(
          color: Colors.cyan[100],
          alignment: Alignment(0.0,0.0),
          child: Text(
            '1',
            style: TextStyle(fontSize: 31.0,color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue[100],
          alignment: Alignment(0.0,0.0),
          child: Text(
            '2',
            style: TextStyle(fontSize: 31.0,color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}

