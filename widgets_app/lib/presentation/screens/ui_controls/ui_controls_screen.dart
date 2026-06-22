import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {

  static const name = 'ui_controls_screen';

  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine}

class _UIControlsViewState extends State<_UIControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: Text('Controles Adicionales'),
          value: true,
          onChanged: (value) => setState((){
            isDeveloper = !isDeveloper;
          }),
        ),

        ExpansionTile(
          title: Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioGroup(
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = value!;
              }),
              child: const Column(
                children: [
                  RadioListTile(
                    title: Text('By Car'),
                    subtitle: Text('Viajar por carro'),
                    value: Transportation.car,
                  ),
                  RadioListTile(
                    title: Text('By Boat'),
                    subtitle: Text('Viajar por barco'),
                    value: Transportation.boat,
                  ),
                  RadioListTile(
                    title: Text('By Plane'),
                    subtitle: Text('Viajar por avion'),
                    value: Transportation.plane,
                  ),
                  RadioListTile(
                    title: Text('By Submarine'),
                    subtitle: Text('Viajar por submarino'),
                    value: Transportation.submarine,
                  ),
                ],
              )
            ),
          ],
        ),

        CheckboxListTile(
          title: Text('¿Desayuno?'),
          value: wantsBreakfast, 
          onChanged: ((value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }))
        ),
        CheckboxListTile(
          title: Text('¿Almuerzo?'),
          value: wantsLunch, 
          onChanged: ((value) => setState(() {
            wantsLunch = !wantsLunch;
          }))
        ),
        CheckboxListTile(
          title: Text('¿Cena?'),
          value: wantsDinner, 
          onChanged: ((value) => setState(() {
            wantsDinner = !wantsDinner;
          }))
        )
      ]
    );
  }
}