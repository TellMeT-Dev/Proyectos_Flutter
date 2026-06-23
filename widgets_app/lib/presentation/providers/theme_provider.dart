import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/apptheme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//Lista de coloores inmutable
final colorListProvider = StateProvider((ref) => colorList);

//un simple int

final selectedColorProvider = StateProvider((ref) => 0);