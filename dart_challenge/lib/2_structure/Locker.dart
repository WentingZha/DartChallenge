import 'package:flutter/material.dart';

class Locker extends StatelessWidget {
  Locker({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //     child: Text('header'.toUpperCase()),
          //     decoration:BoxDecoration(
          //         color: Colors.pink[100]
          //     )
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('ZhaWenting',style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('zhawenting881030@gmail.com',style: TextStyle(fontWeight: FontWeight.bold)),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://')
            ),
            decoration: BoxDecoration(
                color: Colors.pink[100],
                image: DecorationImage(
                    image: NetworkImage('http://books.google.com/books/content?id=CAUVEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.5),
                        BlendMode.srcOver
                      // BlendMode.hardLight
                    )
                )
            ),
          ),
          ListTile(
            title: Text('ZhaWenTing',textAlign: TextAlign.right),
            trailing: Icon(Icons.charging_station,size: 21.0),//Icon at the end
            onTap: ()=>Navigator.pop(context),
            // leading: Icon(Icons.message,size: 21.0),//Icon on the left
          ),
          ListTile(
            title: Text('Eternity Hui',textAlign: TextAlign.right),
            trailing: Icon(Icons.flight,size: 21.0),//Icon at the end
            onTap: ()=>Navigator.pop(context),//The locker will be closed if the item is clicked
          )
        ],
      ),
    );
  }
}
