import 'dart:async';
import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacementNamed(context, 'intro');
      },
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: height * 0.6,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/Modules/Utils/Assets/sp.gif",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
