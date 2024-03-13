import 'package:flutter/material.dart';
import 'package:dart_challenge/model/Book.dart';

class TableChapter extends StatefulWidget {
  final String title;
  const TableChapter({super.key, required this.title});

  @override
  State<TableChapter> createState() => _State();
}

class _State extends State<TableChapter> {
  @override
  Widget build(BuildContext context) {
    int mSortColumnIndex = 0;
    bool mSortAscending = true;

    return Scaffold(
      appBar: AppBar(title: Text('Table'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: mSortColumnIndex,
              sortAscending: mSortAscending,
              columns: [
                DataColumn(
                    label: Container(
                      // width: 70.0,
                      child: Text('Title'),
                    ),
                  onSort: (int count,bool ascending){
                      setState(() {
                          mSortColumnIndex = count;
                          mSortAscending = ascending;
                          books.sort((a,b){
                            if(!ascending){
                              final c = a;
                              a = b;
                              b = c;
                            }
                            return a.title.length.compareTo(b.title.length);
                          });
                      });
                  }
                ),
                DataColumn(label: Text('Author'))
              ],
                
                // rows: [
                //   DataRow(cells: [
                //     DataCell(Text('Chapter1')),
                //     DataCell(Text('1'))
                //   ]),
                //   DataRow(cells: [
                //     DataCell(Text('Chapter2')),
                //     DataCell(Text('2'))
                //   ]),
                // ]
              
                rows: books.map((book){
                  return DataRow(
                    selected: book.selected,
                    onSelectChanged: (flag){
                      setState(() {
                        if(book.selected != flag){
                          book.selected = flag!;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(book.title)),
                      DataCell(Text(book.author)),
                    ]
                  );
                }).toList(),
            )
          ],
        ),
      )
    );
  }
}


class PaginatedTableChapter extends StatefulWidget {
  final String title;
  const PaginatedTableChapter({super.key, required this.title});

  @override
  State<PaginatedTableChapter> createState() => PaginatedTableState();
}

class PaginatedTableState extends State<PaginatedTableChapter> {


  @override
  Widget build(BuildContext context) {
    int mSortColumnIndex = 0;
    bool mSortAscending = true;
    BookDataSource bookDataSource = BookDataSource();

    return Scaffold(
        appBar: AppBar(title: Text('Table'), elevation: 0.0),
        body: Container(
          padding: EdgeInsets.all(16.0),
          //If you use Row() here,it will throw an exception "BoxConstraints forces an infinite width"
          child: ListView(
            children: <Widget>[
              PaginatedDataTable(
                header: Text('Books'),
                rowsPerPage: 5,
                sortColumnIndex: mSortColumnIndex,
                sortAscending: mSortAscending,
                columns: [
                  DataColumn(
                      label: Container(
                        // width: 70.0,
                        child: Text('Title'),
                      ),

                  ),
                  DataColumn(label: Text('Author')),
                  DataColumn(label: Text('Description'))
                ],
                source: bookDataSource,
              )
            ],
          ),
        )
    );
  }
}

class BookDataSource extends DataTableSource{
  final List<Book> bookList = books;

  int selectedCount = 0;

  @override
  DataRow? getRow(int index) {
    final Book book = bookList[index];
    return DataRow.byIndex(index:index,cells: <DataCell>[
      DataCell(Text(book.title)),
      DataCell(Text(book.author)),
      DataCell(Text(book.description))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => bookList.length;

  @override
  int get selectedRowCount => selectedCount;

}




