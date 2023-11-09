import 'package:contact_diary_app_2/Modules/Screens/Home_Screen/Model/theme_model.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel theme = ThemeModel(isDark: false);

  void changeTheme() {
    theme.isDark = !theme.isDark;
    notifyListeners();
  }
}
