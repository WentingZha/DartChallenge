import 'package:flutter/material.dart';
import 'package:dart_challenge/model/Book.dart';

class BookDetailChapter extends StatelessWidget {
  final Book book;

  const BookDetailChapter({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${book.title}'),
        elevation: 0.0
      ),
      body: Column(
        children: <Widget>[
          Image.asset('images/zhaweiming.JPG'),
          Container(
            padding: EdgeInsets.all(31.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${book.title}',style: Theme.of(context).textTheme.titleLarge),
                Text('${book.author}',style: Theme.of(context).textTheme.titleMedium),
                SizedBox(height: 31.0),
                Text('${book.description}',style: Theme.of(context).textTheme.bodyLarge)
              ],
            ),
          )
        ],
      ),
    );
  }
}
