import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String clicks = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Counter Screen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)), 
            Text('Click${ clickCounter == 1 ? '':'s'}', //  Para Comparar
             style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        clickCounter += 1;
        if(clickCounter==1){
          clicks='Click';
        }else{
          clicks='Clicks';
        }
        setState(() {}); 
        //Al usar setState recarga el estado pero solo con lo que cambio, si hay algo
        //constante entonces flutter lo ignorara para la recarga
      },child: const Icon(Icons.plus_one)
      ),
    );
  }
}
