import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:theming/Services/dark_theme_prefs.dart';

import '../Provider/dark_theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkthemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title:   const Text('Theme'),

          secondary: Icon(themeState.getDarkTheme 
          ? Icons.dark_mode_outlined :
          Icons.light_mode_outlined),
          value: themeState.getDarkTheme, 
        onChanged: (bool value){
          setState(() {
            themeState.setDarkTheme = value;
          });
        }),
      ),
    );
  }
}