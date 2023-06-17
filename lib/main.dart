import 'package:flutter/material.dart';

//* main() function gets executed automatically
//* By Dart, when executing the complied app on the target device

//* runApp() should be called inside of main()
//* runApp() "tells" Flutter what to display on the screen

//* Pass the to-be-displayed "widget tree" to runApp()
//* A "widget tree" is a combination of (nested) Flutter widgets that build the overall user interface

//* 1. Parsed from top to bottom

//* 2. Compiled by Dart & Flutter tools

//* 3. Executed on the mobile devices

// (i.e., which UI elements to display)

//* When using Flutter, you build your user interface with code
//* A combination of widgets
//* Widgets are nested into each other
//* "widget tree"
// Built-in Center widget centers its content horizontally + vertically
// Built-in Text widget displays some text on the screen
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  //* super refers to the parent class
  const GradientContainer({super.key});

  @override
  //* Called for you, automatically, by Flutter (when it renders the user interface)
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lime,
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "Hello World!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
