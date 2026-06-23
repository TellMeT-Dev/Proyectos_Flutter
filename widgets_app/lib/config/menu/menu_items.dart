import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
  
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Contador', 
    subTitle: 'Cuenta numeros XD', 
    link: '/counter', 
    icon: Icons.plus_one
  ),
  
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios Botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Snackbars y diálogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Animated Container en Flutter', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'UI Controls', 
    subTitle: 'Controles de interfaz de usuario', 
    link: '/ui-controls', 
    icon: Icons.dashboard
  ),

  MenuItem(
    title: 'Introduccion a la aplicación', 
    subTitle: 'Tutorial Introductorio a la aplicacion', 
    link: '/tutorial', 
    icon: Icons.layers_outlined
  ),

  MenuItem(
    title: 'Scroll infinito y Pull Refresh', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded
  ),

  MenuItem(
    title: 'Theme Changer', 
    subTitle: 'Cambiar tema de la aplicacion', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),

  
];