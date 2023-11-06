import 'package:contact_diary_app_2/Utils/Themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Home Screen"),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "0",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
