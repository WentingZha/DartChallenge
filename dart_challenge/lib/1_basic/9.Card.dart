import 'package:dart_challenge/model/Book.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ZwtApp());

class ZwtApp extends StatelessWidget{
  const ZwtApp({super.key});

  @override
  Widget build(BuildContext context){
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Address1',style: TextStyle(fontWeight: FontWeight.w100),),
            subtitle: Text('ZhaWenting'),
            leading: Icon(Icons.account_box,color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text('Address2',style: TextStyle(fontWeight: FontWeight.w100),),
            subtitle: Text('ZhaWenting'),
            leading: Icon(Icons.account_box,color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text('Programmer',style: TextStyle(fontWeight: FontWeight.w100),),
            subtitle: Text('ZhaWenting'),
            leading: Icon(Icons.account_box,color: Colors.lightBlue),
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'ZhaWenting Example',
      // home: Scaffold(
      //     appBar: AppBar(title: Text('Card')),
      //     body: card
      //
      // ),
      home: CardChapter(),
    );
  }
}

class CardChapter extends StatefulWidget {
  CardChapter({super.key});

  @override
  State<CardChapter> createState() => _State();
}

class _State extends State<CardChapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: ListView(
            children: books.map((book){
              return Card(
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                        aspectRatio: 9/16,
                        child: ClipRRect(//Radius border
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          child: Image.asset(book.imageAsset,fit: BoxFit.cover),

                        )
                      // child: Image.asset(book.imageAsset,fit: BoxFit.cover),//Normal border
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(book.imageAsset),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(book.description,maxLines: 2,overflow: TextOverflow.ellipsis),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: (){},
                            child: Text('Post'.toUpperCase()
                            )
                        ),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text('Like'.toUpperCase()
                            )
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList()
        ),
      ),
    );
  }
}





