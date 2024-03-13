import 'package:flutter/material.dart';
import 'dart:async';

class BroadcastStreamChapter extends StatefulWidget {
  final String title;
  const BroadcastStreamChapter({super.key, required this.title});

  @override
  State<BroadcastStreamChapter> createState() => _State();
}

class _State extends State<BroadcastStreamChapter> {

  late StreamSubscription streamSubscription;
  StreamController<String> streamController = StreamController.broadcast();
  late StreamSink streamSink;
  String _data = 'Hang on';

  @override
  void dispose() {
    // TODO: implement dispose
    streamController.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Create a stream.');
    streamSink = streamController.sink;
    print('Listen on 2 streams.');
    streamSubscription = streamController.stream.listen(event,onError: onError,onDone: onDone);
    streamController.stream.listen(event2,onError: onError,onDone: onDone);
    print('Initialized');
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Table'), elevation: 0.0),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StreamBuilder(
                    stream: streamController.stream,
                    initialData: 'Hang on',
                    builder: (context, snapshot) {
                      return Text('${snapshot.data}');
                    }
                ),
                Text(_data,style: TextStyle(fontSize: 31)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: pauseStream, child: Text('Pause')),
                    ElevatedButton(onPressed: resumeStream, child: Text('Resume')),
                    ElevatedButton(onPressed: cancelStream, child: Text('Cancel')),
                    ElevatedButton(onPressed: addDataToStream, child: Text('PushDataToStream'))
                  ],
                )

              ],
            ),
          )
        )
    );
  }

  void event(String data) {
    setState(() {
      _data = data;
    });
    // print('$data');
  }

  onError(error) {
    print('Error:$error');
  }

  void onDone() {
    print('Done');
  }
  //1.Press 'push' to get data after 3 seconds
  //2.Press 'pause' to stop data stream
  //3.Press 'push' again, no data displayed
  //4.Press 'resume' to get the data again

  void pauseStream() {
    print('Pause subscription');
    streamSubscription.pause();
  }

  void resumeStream() {
    print('Resume subscription');
    streamSubscription.resume();
  }

  void cancelStream() {
    print('Cancel subscription');
    streamSubscription.cancel();
  }

  void addDataToStream() async{
    print('Add data to stream');
    String data = await fetchData();
    // streamController.add(data);
    streamSink.add(data);
  }

  void event2(String event) {
    print('even2:$event');
  }
}

Future<String> fetchData() async{
  await Future.delayed(Duration(seconds: 3));
  return 'Stream example';
  // throw 'Error!';
}