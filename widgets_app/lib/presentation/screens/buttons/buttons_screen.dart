import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Icon'),
            ),

            FilledButton(
              onPressed: () {},
              child: Text('Filled'),
            ),

            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_balance_rounded),
              label: const Text('Filled Icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_balance_rounded),
              label: const Text('Outlined Icon'),
            ),

            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),

            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_balance_rounded),
              label: const Text('Text Icon'),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_balance_rounded),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.account_balance_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        )
      ),
    );
  }
}