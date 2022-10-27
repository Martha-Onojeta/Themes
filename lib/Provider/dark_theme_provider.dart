import 'package:flutter/material.dart';
import 'package:theming/Services/dark_theme_prefs.dart';

class DarkthemeProvider with ChangeNotifier{
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value){
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}