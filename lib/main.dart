import 'package:flutter/material.dart';
import 'package:tasks_assignment/views/screens/responsive_design/large_screens.dart';
import 'package:tasks_assignment/views/screens/responsive_design/small_screens.dart';

void main() {
  runApp(MaterialApp(home: ResponsiveTest()));
}

class ResponsiveTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return MediaQuery.of(context).size.width > 500
        ? LargeScreen()
        : SmallScreen();
  }
}
