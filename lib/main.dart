import 'package:contact_diary_app_2/Modules/Screens/Counter_Screen/Providers/counter_provider.dart';
import 'package:contact_diary_app_2/Modules/Screens/Splash_Screen/Views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Modules/Screens/Counter_Screen/Views/counter_screen.dart';
import 'Modules/Screens/Home_Screen/Views/home_screen.dart';
import 'Modules/Utils/Themes/app_theme.dart';
import 'Modules/Screens/Add_Contact_Screen/Views/add_contact_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => CounterProvider(),
      builder: (ctx, _) => MaterialApp(
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => Counter_Screen(),
          'home': (ctx) => HomeScreen(),
          'add_contact': (ctx) => Add_Contact_Screen(),
        },
      ),
    ),
  );
}
