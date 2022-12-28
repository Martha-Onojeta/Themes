import 'package:flutter/material.dart';
class Styles{
  static ThemeData themeData(bool isDarkTheme, BuildContext context){
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme? const Color(0XFF00001a) : const Color(0XFFFFFFFF),
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
        secondary: 
        isDarkTheme? const Color(0XFF1a1F3c) : const Color(0XFFE8FDFD),
        brightness: isDarkTheme ? Brightness.dark : Brightness.light 
      ),
      cardColor: 
      isDarkTheme ? const Color(0XFF0a02dc) : const Color(0XFFf2fdfd),
      canvasColor: 
      isDarkTheme? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: 
        isDarkTheme ? const ColorScheme.dark() : const ColorScheme.light()
      )
          );
  }
}