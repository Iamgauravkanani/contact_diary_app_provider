import 'package:contact_diary_app_2/Utils/Themes/app_theme.dart';
import 'package:contact_diary_app_2/Utils/add_contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => HomeScreen(),
        'add_contact': (ctx) => Add_Contact_Screen(),
      },
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
        onPressed: () {
          Navigator.pushNamed(context, 'add_contact');
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Contact Diary"),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 440,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/Utils/Assets/no_contact.gif",
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      )),
    );
  }
}
