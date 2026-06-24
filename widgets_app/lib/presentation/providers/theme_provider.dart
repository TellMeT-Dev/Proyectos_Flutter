import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/apptheme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

//Lista de coloores inmutable
final colorListProvider = StateProvider((ref) => colorList);

//un simple int

final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  // State = Estado = new AppTheme()
  ThemeNotifier(): super(AppTheme());

  void toogleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}