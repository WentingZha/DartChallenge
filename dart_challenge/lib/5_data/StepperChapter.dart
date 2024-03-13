import 'package:flutter/material.dart';
import 'package:dart_challenge/model/Book.dart';

class StepperChapter extends StatefulWidget {
  final String title;
  const StepperChapter({super.key, required this.title});

  @override
  State<StepperChapter> createState() => _State();
}

class _State extends State<StepperChapter> {
  int curStep = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Stepper'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.black12
                ),
                child: Stepper(
                  // currentStep: 1,//Step 2 list will be expanded
                  currentStep: curStep,
                  onStepTapped: (int stepNum){//The step will be expanded when the number label is clicked
                    setState(() {
                      curStep = stepNum;
                    });
                  },
                  onStepContinue: (){
                    setState(() {
                      curStep < 2 ? curStep+=1 : curStep;
                    });
                  },
                  onStepCancel: (){
                    setState(() {
                      curStep > 0 ? curStep-=1 : curStep = 0;
                    });
                  },
                  steps: [
                    Step(title: Text('Login'), subtitle:Text('No Account? Register'),
                        content: Text('Login with password or fingerprint.'),isActive: curStep == 0),
                    Step(title: Text('Select Plan'), subtitle:Text('Plan1'),
                        content: Text('Plan1...Plan2...'),isActive: curStep == 1),
                    Step(title: Text('Check Payment'), subtitle:Text('Select the way you pay and check the receipt'),
                        content: Text('Bill'),isActive: curStep == 2),
                  ],
                )
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




