import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpChapter extends StatefulWidget {
  final String title;
  const HttpChapter({super.key, required this.title});

  @override
  State<HttpChapter> createState() => _State();
}

class _State extends State<HttpChapter> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchBook();

    final challenge = {
      'name': 'DartChallenge',
      'description':'Android dart tutorial.'
    };

    print(challenge['name']);
    print(challenge['description']);

    final challengeEncoded = json.encode(challenge);
    print(challengeEncoded);

    final challengeDecoded = json.decode(challengeEncoded);
    print(challengeDecoded['name']);
    print(challengeDecoded['description']);
    print(challengeDecoded is Map);

    final challengeModel = Challenge.fromJson(challengeDecoded);
    print('Name:${challengeModel.name}');
    print('Description:${challengeModel.description}');

    print(json.encode(challengeModel));

    getBooks().then((value) => print(value));

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Http')),
      body: Column(
        children: [
          FutureBuilder(future: getBooks(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Text('Loading...'),
                  );
                }

                return Column(
                  children: <Widget>[
                    SizedBox(
                      height: 400, // fixed height
                      child:  ListView(
                        children:
                        snapshot.data.map<Widget>((item){
                          return ListTile(
                            title: Text(item.id)
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                );
            })
        ],
      )
    );

  }

  void fetchBook() async {
    final response = await http.get(Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=challenge'));
    print('statusCode:${response.statusCode}');
    print('body:${response.body}');
  }

  Future<List<item>> getBooks() async {
    final response = await http.get(Uri.parse(
        'https://www.googleapis.com/books/v1/volumes?q=challenge'));
    if(response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        List<item> bookList = responseBody['items'].map<item>((book)=> item.fromJson(book)).toList();
        return bookList;
    }else{
      throw Exception('Failed to get books');
    }
  }
}

class Challenge {
  final String name;
  final String description;
  Challenge(this.name, this.description);

  Challenge.fromJson(Map json)
      : name = json['name'],
        description = json['description']{}

  Map toJson() => {
    'name':name,
    'description':description
  };
}

class Book {
  String kind;
  String totalItems;
  List<item> items;
  Book(this.kind,this.totalItems,this.items);

  Book.fromJson(Map json)
      : items = json['items'],
        kind = json['kind'],
        totalItems = json['totalItems']{}

  Map toJson() => {
    'kind':kind,
    'totalItems':totalItems,
    'items':items
  };
}


class item {
  String kind;
  String id;
  item(this.kind, this.id);

  item.fromJson(Map json)
      : id = json['id'],
        kind = json['kind']{}

  Map toJson() => {
    'kind':kind,
    'id':id
  };
}




