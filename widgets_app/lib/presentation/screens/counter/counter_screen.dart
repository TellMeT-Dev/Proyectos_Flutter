import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {

  static int clicks = 0;

  static const name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        actions: [
          IconButton(
            icon: 
            isDarkMode ?
            Icon(Icons.dark_mode_outlined): Icon(Icons.light_mode_outlined),
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            }, 
          )
        ],
      ),

      body: Center(
        child: Text('Value: $clickCounter', style: titleStyle,),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}