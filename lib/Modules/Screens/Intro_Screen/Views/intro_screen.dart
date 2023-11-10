import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro_Screen extends StatelessWidget {
  const Intro_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Contact Diary App",
            body: "Keep a privacy friendly log of your contacts"
                "Keep this contact diary and record when you met with whom.",
            image: Image.asset("lib/Modules/Utils/Assets/intro1.gif",
                height: 450.0),
          ),
          PageViewModel(
            title: "Contact Diary App",
            body:
                "Just hold on to who you met with. The location can optionally be determined by GPS. The contacts can be added via an input field or from the address book.",
            image: Image.asset("lib/Modules/Utils/Assets/intro2.gif",
                height: 450.0),
          ),
          PageViewModel(
            title: "Contact Diary App",
            body:
                "The data remains only on the device and is not passed on to third parties. The application has no Internet access, so the data cannot leave the device.",
            image: Image.asset("lib/Modules/Utils/Assets/intro3.gif",
                height: 550.0),
          ),
        ],
        showSkipButton: true,
        showNextButton: true,
        next: Text("Next"),
        skip: const Text("Skip"),
        done: const Text("Done"),
        onDone: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      ),
    );
  }
}
