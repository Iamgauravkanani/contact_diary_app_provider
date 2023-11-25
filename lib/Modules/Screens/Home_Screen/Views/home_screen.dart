import 'package:contact_diary_app_2/Modules/Screens/Add_Contact_Screen/Providers/Contact_Provider/contact_provider.dart';
import 'package:contact_diary_app_2/Modules/Screens/Home_Screen/Providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
        ],
        title: const Text("Contact Diary"),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        centerTitle: true,
      ),
      body: (Provider.of<ContactProvider>(context, listen: false)
              .allContact
              .isNotEmpty)
          ? ListView.builder(
              itemCount: Provider.of<ContactProvider>(context, listen: false)
                  .allContact
                  .length,
              itemBuilder: (ctx, i) => Card(
                child: ListTile(
                  leading: const CircleAvatar(),
                  title: Text(
                      Provider.of<ContactProvider>(context, listen: false)
                          .allContact[i]
                          .name),
                  subtitle: Text(
                      Provider.of<ContactProvider>(context, listen: false)
                          .allContact[i]
                          .phone),
                  trailing: IconButton(
                    onPressed: () {
                      launch(
                          "tel:+91${Provider.of<ContactProvider>(context, listen: false).allContact[i].phone}");
                    },
                    icon: const Icon(Icons.call),
                  ),
                ),
              ),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 440,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage(
                        "lib/Modules/Utils/Assets/no_contact.gif",
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
