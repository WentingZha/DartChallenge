import 'package:flutter/material.dart';
import '../model/Book.dart';

void main() => runApp(ZwtApp());

class ZwtApp extends StatelessWidget{
  const ZwtApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZhaWenting Example',
      home: Scaffold(
        appBar: AppBar(title: Text('GridView Widget'),),
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,//The space between two cells
          crossAxisCount: 3,//The number of columns
          children: <Widget>[
            const Text('ZhaWenting'),
            const Text('IT'),
            const Text('Programmer'),
            const Text('Reading'),
            const Text('Board games'),
          ],
        ),
      ),
    );
  }
}

class ZwtGrid extends StatelessWidget{
  const ZwtGrid({super.key});

  @override
  Widget build(BuildContext context){
      return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,//The number of columns
          mainAxisSpacing: 1.0,//Margin of each row
          crossAxisSpacing: 1.0,//Margin of each column
          childAspectRatio: 0.7// Width/Height of the cell
        ),
        children: <Widget>[
          Image.network('http://',fit: BoxFit.cover),
          Image.network('http://',fit: BoxFit.cover),
          Image.network('http://',fit: BoxFit.cover)
        ],
      );
  }

}


class GridViewCount extends StatelessWidget {
  GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildTiles(int length){
      return List.generate(length, (index) {
        return Container(
          color: Colors.white70,
          alignment: Alignment(0.0,0.0),
          child: Text('tile $index',style: TextStyle(fontSize: 16.0,color: Colors.deepPurple)),
        );
      });
    }

    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        scrollDirection: Axis.horizontal,
        children:buildTiles(100)

      // children:<Widget>[
      //   Container(
      //     color: Colors.white,
      //     alignment: Alignment(0.0,0.0),
      //     child: Text(
      //       '1',
      //       style: TextStyle(fontSize: 16.0,color: Colors.purple),
      //     ),
      //   ),
      //   Container(
      //     color: Colors.cyan[100],
      //     alignment: Alignment(0.0,0.0),
      //     child: Text(
      //       '2',
      //       style: TextStyle(fontSize: 16.0,color: Colors.purple),
      //     ),
      //   ),
      //   Container(
      //     color: Colors.cyan[100],
      //     alignment: Alignment(0.0,0.0),
      //     child: Text(
      //       '3',
      //       style: TextStyle(fontSize: 16.0,color: Colors.purple),
      //     ),
      //   ),
      //   Container(
      //     color: Colors.white,
      //     alignment: Alignment(0.0,0.0),
      //     child: Text(
      //       '4',
      //       style: TextStyle(fontSize: 16.0,color: Colors.purple),
      //     ),
      //   ),
      // ],
    );
  }
}

class GridViewExtend extends StatelessWidget {
  GridViewExtend({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildTiles(int length){
      return List.generate(length, (index) {
        return Container(
          color: Colors.white70,
          alignment: Alignment(0.0,0.0),
          child: Text('tile $index',style: TextStyle(fontSize: 16.0,color: Colors.deepPurple)),
        );
      });
    }

    return GridView.extent(
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        scrollDirection: Axis.horizontal,
        maxCrossAxisExtent: 150.0,
        children:buildTiles(100)

    );
  }
}

class GridViewExtendBuilder extends StatelessWidget {
  GridViewExtendBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _gridItemBuilder(BuildContext context, int count) {
      return Container(
        child: Image.network(
            books[count].imageUrl,
            fit: BoxFit.cover),
      );
    }

    return GridView.builder(
      itemCount: books.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 24,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 7.0
      ),

    );
  }


}
