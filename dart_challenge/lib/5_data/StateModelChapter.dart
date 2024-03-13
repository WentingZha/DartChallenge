import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class StateModelChapter extends StatelessWidget {

  const StateModelChapter({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
        model: CounterModel(),
        child: Scaffold(
            appBar: AppBar(title: Text('State')),
            body: CounterWrapper(),
            floatingActionButton: ScopedModelDescendant<CounterModel>(
              rebuildOnChange: false,
              builder: (context,_,model) => FloatingActionButton(
                child: Icon(Icons.exposure_minus_1),
                onPressed: model.decreaseCount
              )
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
    return ScopedModelDescendant<CounterModel>(
        builder: (context,_,model) => ActionChip(
        label: Text('${model.count}'),
        onPressed: model.decreaseCount
        )
    );
  }
}

class CounterProvider extends InheritedWidget{
  CounterProvider(this.decreaseCount, this.child) : super(child: child);
  VoidCallback decreaseCount;
  Widget child;

  static CounterProvider? of(BuildContext context) => context.getInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model{
  int count = 0;
  // int get _count => count;
  void decreaseCount(){
    count -= 1;
    notifyListeners();//Observe the change of the models
  }
}




