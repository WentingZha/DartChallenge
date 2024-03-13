//https://www.googleapis.com/books/v1/volumes?q=challenge
class Book {
  Book({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.description,
    required this.imageAsset,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;
  final String imageAsset;

  bool selected = false;
}

final List<Book> books = [
  Book(
    title: 'ABC',
    author: 'ABC1',
    description: 'ABC12',
    imageUrl: 'http://books.google.com/books/content?id=UQcUEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
    imageAsset: 'images/zhaweiming.JPG'
  ),
  Book(
    title: 'DEF',
    author: '1231',
    description: '12312',
    imageUrl: 'http://books.google.com/books/content?id=ERJ_MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
    imageAsset: 'images/zhaweiming2.JPG'
  ),
  Book(
    title: '234',
    author: '2345',
    description: '23456',
    imageUrl: 'http://books.google.com/books/content?id=ERJ_MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
    imageAsset: 'images/zhaweiming3.JPG'
  ),
  Book(
    title: '1',
    author: '12',
    description: '123',
    imageUrl: 'http://books.google.com/books/content?id=ERJ_MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
    imageAsset: 'images/zhaweiming4.JPG'
  ),
  Book(
    title: '2',
    author: '23',
    description: '234',
    imageUrl: 'http://books.google.com/books/content?id=ERJ_MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
    imageAsset: 'images/zhaweiming5.JPG'
  ),
  Book(
    title: '3',
    author: '34',
    description: '345',
    imageUrl: 'http://books.google.com/books/content?id=ERJ_MAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
    imageAsset: 'images/zhaweiming6.JPG'
  ),
];