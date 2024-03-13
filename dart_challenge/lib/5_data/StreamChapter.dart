import 'package:flutter/material.dart';
import 'dart:async';

class StreamChapter extends StatefulWidget {
  final String title;
  const StreamChapter({super.key, required this.title});

  @override
  State<StreamChapter> createState() => _State();
}

class _State extends State<StreamChapter> {

  late StreamSubscription streamSubscription;
  StreamController<String> streamController = StreamController<String>();
  late StreamSink streamSink;

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
    // Stream<String> stream = Stream.fromFuture(fetchData());
    print('Listen on a stream.');
    streamSubscription = streamController.stream.listen(event,onError: onError,onDone: onDone);
    streamSink = streamController.sink;
    print('Initialized');
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Table'), elevation: 0.0),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 41.0),
                ElevatedButton(onPressed: pauseStream, child: Text('Pause')),
                ElevatedButton(onPressed: resumeStream, child: Text('Resume')),
                ElevatedButton(onPressed: cancelStream, child: Text('Cancel')),
                ElevatedButton(onPressed: addDataToStream, child: Text('PushDataToStream'))
              ],
            ),
          )
        )
    );
  }

  void event(String data) {
    print('$data');
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
}

Future<String> fetchData() async{
  await Future.delayed(Duration(seconds: 3));
  return 'Stream example';
  // throw 'Error!';
}