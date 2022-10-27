import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming/Const/theme_data.dart';
import 'package:theming/Provider/dark_theme_provider.dart';
import 'package:theming/Screens/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkthemeProvider themeChangeProvider = DarkthemeProvider();

  void getCurrentAppTheme () async{
    themeChangeProvider.setDarkTheme = 
    await themeChangeProvider.darkThemePrefs.getTheme();
  }
@override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        },)
      ],
      child: Consumer<DarkthemeProvider>(
        builder: (context, themeProvider, child) {
          
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: const HomeScreen(),
          );
        }
      ),
    );
  }
}

