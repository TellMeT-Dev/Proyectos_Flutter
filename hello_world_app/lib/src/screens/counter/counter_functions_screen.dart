import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  String clicks = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Counter Functions')),
        actions: [
          IconButton(onPressed: () 
          {
            setState(() {
              clickCounter = 0;
            });
          }, 
          icon: const Icon(Icons.refresh_rounded)),
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: (){
              clickCounter = 0;
              setState(() {});
            },
          ), 
          const SizedBox(height: 10,),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: (){
              if(clickCounter==0) return;
              clickCounter--;
              setState(() {});
            },
          ),
          const SizedBox(height: 10,),
          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: (){
              clickCounter++;
              setState(() {});
            },  
          ), 

          // FloatingActionButton(
          //   shape: StadiumBorder(),
          //   onPressed: (){
          //     clickCounter = 0;
          //     setState(() {}); 
          //     //Al usar setState recarga el estado pero solo con lo que cambio, si hay algo
          //     //constante entonces flutter lo ignorara para la recarga
          //   },child: const Icon(Icons.refresh_outlined)
          // )
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      shape: StadiumBorder(),
      onPressed: onPressed,
      autofocus: true,
      focusColor: Color.fromARGB(255, 255, 255, 255),
      //Al usar setState recarga el estado pero solo con lo que cambio, si hay algo
      //constante entonces flutter lo ignorara para la recarga
      child: Icon(icon),
    );
  }
}
