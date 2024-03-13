import 'dart:async';
import 'package:flutter/material.dart';

class BlocChapter extends StatefulWidget {
  final String title;
  const BlocChapter({super.key, required this.title});

  @override
  State<BlocChapter> createState() => _State();
}

class _State extends State<BlocChapter> {

  @override
  Widget build(BuildContext context) {

    return CounterBlocProvider(
        Scaffold(
          appBar: AppBar(title: Text('Bloc'), elevation: 0.0),
          body: CounterChapter(),
          floatingActionButton: CounterActionButton(),
        ),
        CounterBloc()
    );

  }
}

class CounterChapter extends StatelessWidget {
  const CounterChapter({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc? couterBloc = CounterBlocProvider.of(context)?.bloc;
    return Center(
      child: StreamBuilder(
        initialData: 1,
        stream: couterBloc?.count,
        builder: (context,snapshot){
          return ActionChip(
            label: Text('${snapshot.data}'),
            onPressed: (){
              couterBloc?.counter.add(2);
            },
          );
        },
      )
    );
  }
}

class CounterActionButton extends StatelessWidget {
  const CounterActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    CounterBloc? couterBloc = CounterBlocProvider.of(context)?.bloc;
    return FloatingActionButton(
        child: Icon(Icons.highlight_remove),
        onPressed: (){
          couterBloc?.counter.add(2);
        },
    );

  }

}

class CounterBlocProvider extends InheritedWidget{
  final Widget child;
  final CounterBloc bloc;
  CounterBlocProvider( this.child, this.bloc) : super(child: child);

  static CounterBlocProvider? of(BuildContext context) => context.getInheritedWidgetOfExactType();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class CounterBloc{
  int _count = 1;
  final couterActionController = StreamController<int>();
  StreamSink<int> get counter => couterActionController.sink;
  final counterController = StreamController<int>();
  Stream<int> get count => counterController.stream;

  CounterBloc(){
    couterActionController.stream.listen(event);
  }
  void log(){
    print('Bloc');
  }

  void event(int event) {
    print('$event');
    _count = event * _count;
    counterController.add(_count);
  }

  void dispose(){
    couterActionController.close();
    counterController.close();
  }
}



