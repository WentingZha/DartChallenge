import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  title: "ZhaWenting Navigation Example",
  home: FirstScreen(),
));

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Navigation Screen'),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => SecondScreen()));
          },
          child: Text('Check the detail of the products'),

        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Details page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

