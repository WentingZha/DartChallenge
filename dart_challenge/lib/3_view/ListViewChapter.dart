import 'package:dart_challenge/3_view/BookDetailChapter.dart';
import 'package:flutter/material.dart';

import '../model/Book.dart';

class ListViewChapter extends StatelessWidget {
  const ListViewChapter({super.key});
  
  Widget listItemBuilder(BuildContext context, int count){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(books[count].imageUrl,
              fit: BoxFit.cover,
            )
          ),
          Column(
            children: <Widget>[
              Image.asset('images/zhaweiming.JPG'),
              SizedBox(height: 16.0),
              Text(
                books[count].title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                books[count].author,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(//Tap the item to test the effect of splitting ink
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BookDetailChapter(book: books[count]))
                  );
                },
              ),
            ),
          )
        ]
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: books.length,
        itemBuilder: listItemBuilder
    );
  }
}
