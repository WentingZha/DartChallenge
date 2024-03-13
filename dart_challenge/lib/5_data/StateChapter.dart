import 'package:dart_challenge/5_data/BlocChapter.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateChapter extends StatelessWidget {

  const StateChapter({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
  int count = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
      ),
      body: Center(
        child: Chip(
          label: Text('$count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.exposure_minus_1),
        onPressed: (){
          count -= 1;
        },
      ),
    );
  }
}

class StateStfulChapter extends StatefulWidget {
  final String title;
  const StateStfulChapter({super.key, required this.title});

  @override
  State<StateStfulChapter> createState() => _State();
}

class _State extends State<StateStfulChapter> {
  int _count = 10;
  decreaseCount(){
    setState(() {
      _count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(_count, decreaseCount,
         Scaffold(
           appBar: AppBar(title: Text('State')),
           body: CounterWrapper(),
           floatingActionButton: FloatingActionButton(
             child: Icon(Icons.exposure_minus_1),
             onPressed: decreaseCount
           )
         )
    );
  }
}


//Widget tree
class CounterWrapper extends StatelessWidget {
  const CounterWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter()
    );
  }
}

//Receive a callback
class Counter extends StatelessWidget {
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
  int? count = CounterProvider.of(context)?.count;
  VoidCallback? decreaseCount = CounterProvider.of(context)?.decreaseCount;
    return ActionChip(
        label: Text('$count'),
        onPressed: decreaseCount
        // onPressed: (){debugPrint('$count');}
    );
  }
}

class CounterProvider extends InheritedWidget{
  CounterProvider(this.count, this.decreaseCount, this.child) : super(child: child);
  int count;
  VoidCallback decreaseCount;
  Widget child;

  static CounterProvider? of(BuildContext context) => context.getInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model{
  int _count = 0;
  int get count => _count;
  void decreaseCount(){
    _count += 1;
    notifyListeners();//Observe the change of the models
  }
}




