import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {

  static int clicks = 0;

  static const name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: Center(
        child: Text('Value: 0', style: titleStyle,),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          clicks = clicks + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}